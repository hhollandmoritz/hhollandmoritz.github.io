## My version of the website can be found here:
[My Site](https://hhollandmoritz.github.io/)


## Workflow for updating website on github:

1) Deploy the site from the development branch to the gh-pages branch
```bash
$ git checkout development # changes you to development branch
$ ./bin/deploy -s development -d gh-pages
```

2) 

a) [optional] change to the gh-pages branch and merge the master to the gh-pages branch. Then resolve any merge conflicts here first (or decide they don't matter and that you can force the branch merge)

```bash
$ git checkout gh-pages
$ git merge master # merges master branch into the current branch (i.e. gh-pages)
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

## Workflow for updating development branch on github:

To change the development (non-compiled) version of the website, first change to the ```development``` branch.
```bash
$ git checkout development
```

Then make any changes. Finally, add and commit those changes (```git commit -a -m "my update message"```) and push them to the development branch on github. 

```bash
$ git push
```
## Find more information about this theme and the readme here:
[https://github.com/alshedivat/al-folio](https://github.com/alshedivat/al-folio)