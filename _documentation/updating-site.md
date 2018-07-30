---
layout: page
title: Updating the Website
---

After content has been added and verified by building locally using
`bundle exec jekyll serve`, it is necessary to generate the static
site files that will be hosted by the `.io` website. This is a simple
process.

First, commit and push all changes and new files.

```bash
#example commit
cd ~/RnD
git add .
git commit -m 'added new documentation to project'
git push
```

Then execute the following in a bash shell:

```bash
cd ~/RnD
./buildSite
```
That's it, you're all done!

> error "Commit your changes first!"
>The `buildSite` script will build the static site files, commit them,
>and push all commits to github. Because of this, it will not run if
>the git repo is not clean. In other words, if you have uncommited
>changes, then you must either commit them, undo the changes for a
>tracked file via `git checkout [filename]`, or remove an untracked
>file via `rm [filename]`.


