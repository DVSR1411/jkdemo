#!/bin/bash

#######################################################################
 #Author       - Sathwik
 #Date         - 24-06-24
 #Description  - This shellscript shows resources running in AWS
 #Version      - v1
#######################################################################

echo "List of s3 buckets"
aws s3 ls

echo "-------------------------------------------------------------------------------------------"

echo "List of ec2 instances"
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId"

echo "-------------------------------------------------------------------------------------------"

echo "List of cloudwatch dashboards"
aws cloudwatch list-dashboards | jq ".DashboardEntries[].DashboardName"

echo "-------------------------------------------------------------------------------------------"

echo "List of iam users"
aws iam list-users | jq ".Users[].UserName"

echo "-------------------------------------------------------------------------------------------"
