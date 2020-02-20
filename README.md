## My version of the website can be found here:
[My Site](https://hhollandmoritz.github.io/)


## 1: Workflow for updating development branch and pushing it to github:

1) To change the development (non-compiled) version of the website, first make sure you are working in the ```development``` branch.
```bash
$ git checkout development
```

2) Then make any changes to your files.

__Optional__ 

Use the command below to preview your changes locally.

```bash
$ bundle exec jekyll serve
```

3) Finally, add and commit those changes and push them to the development branch on github. 

```bash
$ git commit -a -m "my update message"
$ git push
```

## Workflow for updating website on github:

1) Deploy the site from the development branch to the gh-pages branch

```bash
$ git checkout development # changes you to development branch
$ ./bin/deploy -s development -d gh-pages # this builds the functional gh-pages website version from the guides on the development branch
```

2) 

  a) Change to the gh-pages branch and merge the master to the gh-pages branch. Then resolve any merge conflicts here first (or decide they don't matter and that you can force the branch merge). To learn more about the "ours" strategy go [here](https://www.atlassian.com/git/tutorials/using-branches/merge-strategy).

```bash
$ git checkout gh-pages
$ git merge -s ours master # merges master branch into the current branch (i.e. gh-pages) with strategy "ours"; i.e. preferentially keep files from gh-pages - this is what we want since we will effectively be overwriting mastaer with gh-pages each time. 
```

b) change to the master branch, and merge the gh-pages branch to the master branch. There should be no merge conflicts if you completed step 2a.

```bash
$ git checkout master
$ git merge gh-pages
```

3) push the changes to the master branch to github

```bash
$ git push
```
## Other Editing Notes
* To edit the CV page, open ```_includes/header.html``` in a textfile and edit the link under the "CV link" section.

* If you are receiving dependency notifications on Github about site security, you can update the dependencies in jekyll this way:

```bash
git checkout development
bundle update

```
* If that doesn't solve the problem, try adding the update to the Gemfile directly and then running:

```bash
bundle install
```

* To create a blog post, you can design it in the ```_drafts``` folder first. Then when it is ready for real time, move it to the ```_posts``` folder and rename it the publication date first. Then the draft will be published.

To preview a draft post use this command:
 
```bash
bundle exec jekyll serve --drafts
```


## Find more information about this theme and the readme here:
[https://github.com/alshedivat/al-folio](https://github.com/alshedivat/al-folio)
