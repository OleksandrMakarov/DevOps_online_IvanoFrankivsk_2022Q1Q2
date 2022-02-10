# Module 2
## Task 2.2
#### Install AWS CLI2 and set credentials
WEB: Create default Admin user. Download credentials to *.csv file
```
$ msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi
$ aws configure import --csv file://D:\new_user_credentials.csv --profile Admin
```
CLI: Make account for test user
```
$ aws iam create-user --user-name MyUser
$ aws iam add-user-to-group --user-name MyUser --group-name mygroup
```
#### Create and configure instances. First from WebUI another one using CLI 
![ec2_1 started](images/Screenshot0_m2_2.png)
```
$ aws ec2 create-key-pair --key-name MyTestKey --query 'KeyMaterial' --output text > MyTestKey.pem
$ aws ec2 describe-key-pairs --key-name MyTestKey
$ aws ec2 run-instances --image-id ami-0245697ee3e07e755 --count 1 --instance-type t2.micro --key-name MyTestKey --security-group-ids sg-0b6c29516fd5dbb7f --subnet-id subnet-0997999f00c46f6e1
```
![ec2_2 started](images/Screenshot1_m2_2.png)

```
$ aws ec2 start-instances --instance-ids "i-0fd264b4f7d4074e8" "i-0ba20d2ee4754a870"
$ aws ec2 stop-instances --instance-ids "i-0fd264b4f7d4074e8" "i-0ba20d2ee4754a870"
```
![ec2 started](images/Screenshot2_m2_2.png)

#### Create AMI to keep as a backup
$ aws ec2 create-image --instance-id i-0fd264b4f7d4074e8 --name test_2 --description "AMI server 2"

