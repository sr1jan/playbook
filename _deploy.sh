#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "infinitegwei@skiff.com"
git config --global user.name "infi"

git clone -b gh-pages https://${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}@github.com/${gh-pages}.git book-output
cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
