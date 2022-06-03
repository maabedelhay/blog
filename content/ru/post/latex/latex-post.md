---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Latex- система подготовки документов"
subtitle: "Введение в латекс и варианты его использования"
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
LAtex имеет возможность набирать технические документы, содержащие сложные математические уравнения. Эта функция сделала LaTeX популярным среди ученых и инженеров.

LaTeX можно использовать как самостоятельную систему подготовки документов или как промежуточный формат. Например, в последней роли он иногда используется как часть конвейера для перевода DocBook и других форматов на основе XML в PDF.

## Как установить?

- Установить TexLive

В командной строке напишите

```bash
sudo apt install tex-live-full # Ubuntu and Debian like machines
sudo pacman -Syyu texlive-most tesclive-bin # Manjaro and Arch like machines
```
- Установить Тексмейкер

Кроссплатформенный редактор LaTeX с открытым исходным кодом. Чтобы установить его, перейдите в терминал и выполните эту команду:

```bash
sudo apt install texmaker # Ubuntu and Debian like machines

sudo pacman -Syyu texmaker # Manjaro and Arch like machines
```

- Создать первый документ

Откройте Texmaker и нажмите «Файл», «Создать». Затем введите следующий код:


```
\documentclass{article}
\begin{document}
    Hello, world!
\end{document}

```
Теперь сохраните документ как текстовый файл, выбрав «Файл», «Сохранить». Наконец, скомпилируйте документ, нажав Tools, PDFLaTeX. Убедитесь, что файл PDF создан и работает. Вот и все! Вы создали свой первый документ LaTeX!

## Пример использования латекса

Ввод в LaTeX и соответствующий вывод из системы:

```
\documentclass{article} % Starts an article 
\usepackage{amsmath} % Imports amsmath
\title{\LaTeX} % Title,
\begin{document} % Begins a document,
\maketitle,
\LaTeX{} is a document preparation system for,the \TeX{} typesetting program. It offers,programmable desktop publishing features and,extensive facilities for automating most,aspects of typesetting and desktop publishing,,including numbering and,cross-referencing,,tables and figures, page layout,,bibliographies, and much more. \LaTeX{} was,originally written in 1984 by Leslie Lamport,and has become the,dominant method for using, \TeX; few people write in plain \TeX{} anymore.,The current version is \LaTeXe.,% This is a comment, not shown in final output.,% The following shows typesetting,power of LaTeX:,\begin{align},E_0 &= mc^2 \\,E &= \frac{mc^2}{\sqrt{1-\frac{v^2}{c^2}}},\end{align},\end{document} 
```

![latex](https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/LaTeX_example.svg/744px-LaTeX_example.svg.png)


