#!/bin/bash

INSTANCE_TYPE="t3.micro"
AMI_ID="ami-01a00762f46d584a1"
KEY_NAME="shell_script"
SECURITY_GROUP="sg-092ffecd61f5780d8"
SUBNET_ID="subnet-0ca5ceb7b708b3910"

create_instance() {

echo "Creating instance...."

aws ec2 run-instances \
--image-id $AMI_ID \
--count 1 \
--instance-type $INSTANCE_TYPE \
--key-name $KEY_NAME \
--security-group-ids $SECURITY_GROUP \
--subnet-id $SUBNET_ID
}

stop_instance(){

read -p "Enter Instance ID: " ID

aws ec2 stop-instances --instance-ids $ID


}

start_instance(){

read -p "Enter Instance ID: " ID

aws ec2 start-instances \
--instance-ids $ID

}

reboot_instance(){

read -p "Enter Instance ID: " ID

aws ec2 reboot-instances \
--instance-ids $ID

echo "REBOOT SUCESSFULL...."

}

terminate_instance(){

read -p "Enter Instance ID: " ID

aws ec2 terminate-instances \
--instance-ids $ID

}

status_instance(){

aws ec2 describe-instances \
--query "Reservations[*].Instances[*].[InstanceId,State.Name,PublicIpAddress]" --output table



}

while true

do

echo "================================"
echo "AWS EC2 MENU"
echo "1 Create EC2"
echo "2 Stop EC2"
echo "3 Start EC2"
echo "4 Reboot EC2"
echo "5 Terminate EC2"
echo "6 Show Status "
echo "7 Exit"
echo "==============================="

read -p "Choose Option: " choise
case $choise in 

1)
create_instance
;;

2)
stop_instance
;;

3)
start_instance
;;

4)
reboot_instance
;;

5)
terminate_instance
;;

6)
status_instance
;;

7)
echo "BYE.."
exit
;;

*)
echo "inavalid choose"
;;

esac

done
