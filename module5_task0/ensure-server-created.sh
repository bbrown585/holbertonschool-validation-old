#!/bin/bash

# Variables for the script
KEY_NAME="awesome-key"
SECURITY_GROUP="awesome-sg"
INSTANCE_TYPE="t3.micro"
IMAGE_ID="ami-0c55b159cbfafe1f0" # Ubuntu 20.04 LTS
REGION="us-east-1"
USER="ubuntu"

# Check if an instance is already running
INSTANCE_ID=$(aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].InstanceId" --output text --region $REGION)
if [ -n "$INSTANCE_ID" ]; then
  echo "Instance $INSTANCE_ID is already running"
  # Get the public DNS name of the instance
  PUBLIC_DNS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query "Reservations[*].Instances[*].PublicDnsName" --output text --region $REGION)
  echo "Public DNS name: $PUBLIC_DNS"
else
  # Create a new instance
  echo "No running instances found. Creating a new instance..."
  KEY_FILE="$HOME/.ssh/$KEY_NAME.pem"
  # Check if the private key file exists
  if [ ! -f "$KEY_FILE" ]; then
    echo "The private key file $KEY_FILE does not exist. Aborting."
    exit 1
  fi
  # Launch the instance with the AWS CLI
  INSTANCE=$(aws ec2 run-instances --image-id $IMAGE_ID --count 1 --instance-type $INSTANCE_TYPE --key-name $KEY_NAME --security-groups $SECURITY_GROUP --query "Instances[0].InstanceId" --output text --region $REGION)
  echo "Instance $INSTANCE created"
  # Wait for the instance to be running
  echo "Waiting for the instance to be running..."
  aws ec2 wait instance-running --instance-ids $INSTANCE --region $REGION
  # Get the public DNS name of the instance
  PUBLIC_DNS=$(aws ec2 describe-instances --instance-ids $INSTANCE --query "Reservations[*].Instances[*].PublicDnsName" --output text --region $REGION)
  echo "Public DNS name: $PUBLIC_DNS"
fi

# SSH into the instance
echo "Connecting to instance via SSH..."
ssh -i "$HOME/.ssh/$KEY_NAME.pem" "$USER@$PUBLIC_DNS"

