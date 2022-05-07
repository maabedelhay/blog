---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Automating Deployments with Bash script"
subtitle: "Automating the process to deploy changes to site using simple bash script."
summary: ""
authors: [admin]
tags: []
categories: []
date: 2022-05-07T13:28:34+03:00
lastmod: 2022-05-07T13:28:34+03:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
# Every time I make a change on the site I need to go through set of repeated commands. So I decided to make a simple bash script to automate the task.

![](bash.png)


## What is bash script?

A Bash script is a text file containing a series of commands. Any command that can be executed in the terminal can be put into a Bash script. Any series of commands to be executed in the terminal can be written in a text file, in that order, as a Bash script. There for it is used to automate repetitive tasks on Linux file system. For more information  [read more about bash](https://www.javatpoint.com/bash-scripting) .


## Deploying the site

My site content are in a directory called blog/ . It contains the markdown file. 

After Editing the files i need to push the changes to the remote repository. 

```bash
$ git add . 
$ git commit -m "message"
$ git push -u origin main
```

> Note that my branch called main if you did not change the branch to main, than you have to push to origin master.



After that i run `$ hugo` in the directory. This will build the files into directory called blog/public/ . Now i change directory to  public and push the changes.

```bash
$ git add . 
$ git commit -m "message"
$ git push origin main
```


## Writing the program

As we can see we have to repeat the same commands every time we want to make a change in the site. Let's solve this with bash script.

```bash
#!/bin/bash

echo " "
read -e -p 'Enter commit: ' -i "$message" message
echo " " 
echo "Sending changes to remote.." 
echo " "
git add .
git commit -m "$message"
git push -u origin main
echo "  "
echo "Building site... "
echo " "
hugo
echo " "
echo "Pushing directory public... "
echo " "
cd public
git add .
git commit -m "$message"
git push origin main
echo " "
echo "All Done ;) "

```


> read command will ask for the commit message and save the entered message into variable `$message` .


```bash
chmod +x deploy.sh
./deploy.sh
```


This simple script will let us deploy changes with one click.






