. /etc/phion/bin/cloud-logapi.sh
init_log box_Cloud_control aws-eip-shift
ilog "hook script called with $1"
[[ "_$1" == "_HA-START" ]] && {
/opt/aws/bin/aws ec2 associate-address --instance-id ${instance-id} --allocation-id  ${allocation-id} --allow-reassociation
ilog "EIP shifting to primary initiated: ${aws_handle}"
}