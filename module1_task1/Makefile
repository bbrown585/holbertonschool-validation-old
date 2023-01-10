build:	## Generate the website from the markdown and config file in dist
		@hugo

clean:	## Clean up the content in dist
		@rm -r dist/*
post:   ## Post a new blog post whose filename and title come from the environment variables
	 	@sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md
