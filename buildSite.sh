#!/usr/bin/env bash

if [ -z "$(git status --porcelain)" ]; then 
  # Working directory clean
  rm -rf docs
  bundle exec jekyll build --destination docs
  git add docs
  git commit -m 'site build'
  git push
else 
  echo "There changes that have not been committed or removed. Please fix this and run again."
  echo "The current status of the repo can be checked with 'git status'"
fi

