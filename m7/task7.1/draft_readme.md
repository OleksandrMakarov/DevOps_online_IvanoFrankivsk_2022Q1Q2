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


#### 3.
скрин 2
№№№№ 4.
mysql> ALTER TABLE `test_db`.`COLORS` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ;

Скрин 3 + файл скрипта
№№№№ 5
mysql> INSERT INTO `test_db`.`COLORS`
(`name`)
VALUES
('red'), ('blue'), ('white'), ('green');


INSERT INTO `test_db`.`CARS`
(`number`,`model`,`color`,`driver`)
VALUES
('KA2897HB', 'Mazda6', 3, 2),
('BT1686BT', 'ZAZ', '2', '1');

#### 6
SELECT model, COUNT(*) AS dcount FROM test_db.CARS
where color = 3
group by model
order by dcount;

Скриншот 4

####8 
создание нового пользователя и изменение его привелегий
mysql> create user 'oleksandr'@'%' identified by '*********';
mysql -u oleksandr -p
mysql> GRANT ALL PRIVILEGES ON test_db.* TO 'oleksandr'@'%' WITH GRANT OPTION;
mysql> REVOKE INSERT ON test_db.* FROM 'oleksandr'@'%';
скриншот5

#### 9.
crhbuijn 6