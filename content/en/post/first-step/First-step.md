---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Первый шаг в индивидуальном проекте"
subtitle: "Прогулка по задаче прошлой недели (Размещение личного сайта на github) "
summary: ""
authors: [admin]
tags: []
categories: []
date: 2022-05-05T22:00:08+03:00
lastmod: 2022-05-05T22:00:08+03:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image: 
  caption: ""
  focal_point: "2"
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

<iframe width="560" height="315" src="https://www.youtube.com/embed/xDliIL-_vWo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Обзор
Цель состоит в том, чтобы разместить статический веб-сайт на github с использованием веб-генератора Hugo и шаблонов wowchemy, которые закладывают базовый шаблон для начала работы.


# Последовательность работы

## Установка hugo

- Сначала установил последнюю версию Hugo. Обратите внимание, что нам нужна версия .tar . 

> [Установите hugo отсюда](https://github.com/gohugoio/hugo/releases)

- Затем переместил исполняемый файл Hugo в каталог inyo bin.
```bash
$ mv hugo /usr/bin/
```

## Клонирование шаблона

Я создал репо путем с использованием [starter-hugo-academic](https://github.com/wowchemy/starter-hugo-academic) шаблон. Затем я клонировал репозиторий на свое устройство и назвал его блогом.

## Инициализация hugo

-Внутри каталога /blog я запустил сервер Hugo и Hugo.

```bash
$ hugo
$ hugo server

```
- Это запустил сайт на локальном хосте

## создать репозиторий сайта

Я создал репозиторий и назвал его **username.github.io** , например, **maabedelhay.github.io** . Затем я клонировал его на свое устройство и внутри клонированного каталога.

## Push  в main

Последний шаг — отправить все на github, чтобы увидеть сайт в прямом эфире! 

# Вывод

- Точно так же у нас есть базовый личный сайт, размещенный на github. Кодирование не использовалось, просто выполнялись простые команды, и у нас появился сайт Live в Интернете.

