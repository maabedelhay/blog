---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Автоматизация развертывания с помощью сценария Bash"
subtitle: "Автоматизация процесса развертывания изменений на сайте с помощью простого скрипта bash."
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


 <img src="https://camo.githubusercontent.com/a7de91b915d8b286dda762e3683d9a1c961692d43f8349d020ecd54634a823cf/68747470733a2f2f63646e2e7261776769742e636f6d2f6f64622f6f6666696369616c2d626173682d6c6f676f2f6d61737465722f6173736574732f4c6f676f732f4964656e746974792f504e472f424153485f6c6f676f2d7472616e73706172656e742d62672d636f6c6f722e706e67" alt="failed" > 


## Что такое bash-скрипт?

Сценарий Bash — это текстовый файл, содержащий набор команд. Любую команду, которую можно выполнить в терминале, можно поместить в сценарий Bash. Любая серия команд, которые должны быть выполнены в терминале, может быть записана в текстовом файле в таком порядке, как сценарий Bash. Там он используется для автоматизации повторяющихся задач в файловой системе Linux. Для получения дополнительной информации [узнайте больше о bash] (https://www.javatpoint.com/bash-scripting).


## Развертывание сайта

Контент моего сайта находится в каталоге с именем blog/ . Он содержит файл уценки.

После редактирования файлов мне нужно отправить изменения в удаленный репозиторий.

```bash
$ git add . 
$ git commit -m "message"
$ git push -u origin main
```

> Обратите внимание, что моя ветка называется main, если вы не изменили ветку на main, вам нужно нажать на исходный мастер.



После этого я запускаю `$ Hugo` в каталоге. Это создаст файлы в каталоге с именем blog/public/. Теперь я меняю каталог на общедоступный и вношу изменения.

```bash
$ git add . 
$ git commit -m "message"
$ git push origin main
```


## Writing the program

Как мы видим, нам приходится повторять одни и те же команды каждый раз, когда мы хотим внести изменения на сайт. Давайте решим это с помощью bash-скрипта.

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


> команда read запросит сообщение фиксации и сохранит введенное сообщение в переменную `$message`.


```bash
chmod +x deploy.sh
./deploy.sh
```


Этот простой скрипт позволит нам развернуть изменения одним щелчком мыши.






