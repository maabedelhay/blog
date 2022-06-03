---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Latex- A document preparation system "
subtitle: "Introduction to latex and it is use cases"
summary: ""
authors: [admin]
tags: [os-intro]
categories: [Education]
date: 2022-05-11T18:01:15+03:00
lastmod: 2022-05-11T18:01:15+03:00
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
# LaTeX is a free software package  used for typesetting technical documents.

***
LAtex have the ability to typeset technical documents that contain complex mathematical equations. This feature made LaTeX popular with scientists and engineers

LaTeX can be used as a standalone document preparation system, or as an intermediate format. In the latter role, for example, it is sometimes used as part of a pipeline for translating DocBook and other XML-based formats to PDF.

## How to install it?

- Install TexLive

On th ecommand line write 

```bash
sudo apt install tex-live-full # Ubuntu and Debian like machines
sudo pacman -Syyu texlive-most tesclive-bin # Manjaro and Arch like machines
```
- Install Texmaker

A cross-platform open source LaTeX editor. To install it, go to the terminal and execute this command:

```bash
sudo apt install texmaker # Ubuntu and Debian like machines

sudo pacman -Syyu texmaker # Manjaro and Arch like machines
```

- Creat first document

Open Texmaker and click on File, New. Then put the following code:

```
\documentclass{article}
\begin{document}
    Hello, world!
\end{document}

```
Now save the document as a tex file going to File, Save. Finally, compile the document clicking on Tools, PDFLaTeX. Make sure the PDF file has been created and it's working. And that's it! You've created your first LaTeX document!
## Example of using Latex
Input to LaTeX and the corresponding output from the system:

```
\documentclass{article} % Starts an article 
\usepackage{amsmath} % Imports amsmath
\title{\LaTeX} % Title,
\begin{document} % Begins a document,
\maketitle,
\LaTeX{} is a document preparation system for,the \TeX{} typesetting program. It offers,programmable desktop publishing features and,extensive facilities for automating most,aspects of typesetting and desktop publishing,,including numbering and,cross-referencing,,tables and figures, page layout,,bibliographies, and much more. \LaTeX{} was,originally written in 1984 by Leslie Lamport,and has become the,dominant method for using, \TeX; few people write in plain \TeX{} anymore.,The current version is \LaTeXe.,% This is a comment, not shown in final output.,% The following shows typesetting,power of LaTeX:,\begin{align},E_0 &= mc^2 \\,E &= \frac{mc^2}{\sqrt{1-\frac{v^2}{c^2}}},\end{align},\end{document} 
```

![latex](https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/LaTeX_example.svg/744px-LaTeX_example.svg.png)


