# Module 4
## Task 4.1. 
### Part 1

#### Change the password for user
This command changes next system files:
/etc/passwd
/etc/shadow
![passwd](images/Screenshot1_m4_1.png)
#### Determine the users registered in the system and explore command $finger
![Finger](images/Screenshot2_m4_1.png)
#### Change personal information
```
$ sudo chfn --full-name "Oleksandr Makarov" --home-phone +380660087594 --work-phone +48572035078 oleksandr
```
![Finger2](images/Screenshot3_m4_1.png)
#### Become familiar with the Linux help system
```
$ info finger
$ chfn --help
$ man chfn
```
chfn [-f, --full-name FULL_NAME][user] --- change user's full name
finger [-s] [user] --- Finger displays the user's login name, real name, terminal    name and write status (as a ``*'' after the terminal name if write permission is     denied), idle time, login time, office location and office phone number.

#### Explore the more and less commands using the help system
```
$ ls --help
$ ls -a
$ man cat
$ cat -E .bash_history
```
![cat](images/Screenshot4_m4_1.png)

### Part 2