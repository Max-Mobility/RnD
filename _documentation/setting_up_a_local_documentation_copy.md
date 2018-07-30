---
layout: page
title: Setting Up A Local Documentation Copy
---

This guide will walk a user through setting up a local copy of this
documentation site in order to create new documentation projects and view
changes locally before pushing to github. If all you intend to do is modify
and extend a current documentation project, this step is optional (but
makes this more convenient!).

# Cloning the git repo

[Clone](https://help.github.com/articles/cloning-a-repository/)
`https://github.com/max-mobility/RnD` to a local directory.

If you do not intend to build the site locally, then this is all the setup
you need!


# Building and viewing locally

First, follow the [instructions for installing
jekyll](https://jekyllrb.com/docs/installation/) on your local
system.  
Windows users: [godspeed](https://jekyllrb.com/docs/windows/)

Test your installation by creating a dummy site 

```bash
# Install Jekyll and Bundler gems through RubyGems
gem install jekyll bundler

# Create a new Jekyll site at ./myblog
jekyll new myblog

# Change into your new directory
cd myblog

# Build the site on the preview server
bundle exec jekyll serve

# Now browse to http://localhost:4000
```

Once jekyll is installed and working properly, you can build and view this
documentation site!

```bash
# Move to the directory containing the site's repo
#Assuming that the site is located at ~/RnD
cd ~/RnD

#install necessary dependencies for the site
bundle install

# Build and preview
bundle exec jekyll serve

# Now browse to http://localhost:4000/RnD/
```

>info "localhost:4000/RnD"
> Navigating to `localhost:4000` without `/RnD/` will show a `404 Not
> Found` error. This is normal! Click any of the links on the 404 page
> and they should take you to working pages.



# Next Steps

Learn how to [document a new project](making_a_new_project.md)
