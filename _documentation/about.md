---
layout: page
title: About
toc:
 - Setting Up A Local Documentation Copy
 - Making a New Project
 - Writing Documentation
 - Updating the Website
 - Markdown
---

# Site Layout

This site is built using [Jekyll](https://jekyllrb.com/) and hosted on
[Github Pages](https://pages.github.com/). 

Each project being documented is separated into its own subfolder that contains all
files pertaining to that project (markdown documentation, images,
etc). Each subfolder has the nameing scheme of `_project_name` so that the
folder can be recognized as a Jekyll collection for ease of use.

The only file for each project not contained within this folder is a
markdown file in this repo's root directory to serve as the landing page
for the project. It has the nameing scheme of `project_name.md`. 

# Documentation How-To

Follow the links in the table of contents below to learn how to set up a
local copy of this site and create and maintain documentation.

**All documentation on this site will be made using markdown.** No other
knowledge should be necessary to get started.

For quick reference, the following are useful commands.

```bash
#make sure you're in the right directory, assuming it is named 'RnD' for this example
cd ~/RnD

# view site locally
bundle exec jekyll serve

# commit changes once everything is in order
git add . # '.' is a placeholder, but if used will add the current directory
git commit -m "[commit message]"
git push

# build and push site
./buildSite
```

