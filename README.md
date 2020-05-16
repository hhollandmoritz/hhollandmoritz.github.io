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

4) Optional: reset to development branch for easy editing next time you need to update:

```bash
git checkout development
```

## Workflow for updating website on github:

1) **If writing a Rmarkdown post, run the `R2Jekyll.R` script** to convert the draft post to a jekyll-friendly version.

```bash
cd _drafts
./R2Jekyll.R mypost.Rmd
```

2) **Update the the tags with the `tag_generator.py`**
 Create a tag page for any tags that you have never used before and then run the tag genrator as below:

```bash
python3 tag_generator.py
```
3) **Fix the security flaws**
**NOTE:** Currently jekyll-scholar depends on a version of bibtex-ruby that has a security flaw. The newer version of jekyll-scholar does not have this flaw, however this version of jekyll-scholar depends on jekyll 4. While github-pages depends on jekyll 3.5.8. It seems like the upgrade for github pages will not come soon. Therefore, until that fix before launching the website you need to manually change the bibtex-ruby requirment in Gemfile.lock like this:

1) Remove the versions from each of the bibtex-ruby lines in the Gemfile.Lock
2) Run `bundle update bibtex-ruby` 
   - note this resulted in an error `could not find gem "bibtex-ruby" Did you mean bibtex-ruby?`, but it still managed to update properly. 
3) Use `bundle exec jekyll serve` to check that the update didn't screw up the publications section.
4) Proceed with the deployment.

More information can be found here:
 * [https://github.com/jupyter/jupyter-book/issues/477](https://github.com/jupyter/jupyter-book/issues/477) 
 * https://github.com/github/pages-gem/issues/651 

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
### CV file ###
* To edit the CV page, add the new CV to the "/assets/pdf/" directory and specify it's path in the `CV_file` option in the `_config.yml` file.

### Update headaches ###
* If you are receiving dependency notifications on Github about site security, you can update the dependencies in jekyll this way:

```bash
git checkout development
bundle update

```
* If that doesn't solve the problem, try adding the update to the Gemfile directly and then running:

```bash
bundle install
```

### Drafts ###
* To create a blog post, you can design it in the ```_drafts``` folder first. Then when it is ready for real time, move it to the ```_posts``` folder and rename it the publication date first. Then the draft will be published.

To preview a draft post use this command:
 
```bash
bundle exec jekyll serve --drafts
```

* I have also created a new folder called `under_construction` inside the `_drafts` folder. Inside this folder are pages that I'm still working on that are not yet ready for publication in the Teaching and Projects pages. Unfortunately, at this point I haven't been able to figure out how to stop their contents from being displayed in `bundle exec jekyll serve --drafts`. C'est la vie....

## Find more information about this theme and the readme here:
[https://github.com/alshedivat/al-folio](https://github.com/alshedivat/al-folio)
