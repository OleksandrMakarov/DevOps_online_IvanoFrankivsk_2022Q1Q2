# Module 7
## Task 7.1
## Part 1
#### 1. Download MySQL server for your OS on VM. 
#### 2. Install MySQL server on VM.
$sudo apt install mysql-server
mysql> show databases;
изменение хоста с которого root может выполнять подключение
mysql> use mysql;
mysql> select host, user from user;
mysql> update user set host='%' where user='root' and host='localhost';

создание нового пользователя и изменение его привелегий
mysql> create user 'oleksandr'@'%' identified by '*********';
mysql -u oleksandr -p

#### 3.
скрин 2
№№№№ 4.
Скрин 3 + файл скрипта
№№№№ 5