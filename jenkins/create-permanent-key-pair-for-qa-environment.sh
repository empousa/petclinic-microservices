PATH="$PATH:/usr/local/bin"
APP_NAME="petclinic"
<<<<<<< HEAD
CFN_KEYPAIR="polat-${APP_NAME}-qa.key"
=======
CFN_KEYPAIR="polatlast-${APP_NAME}-qa.key"
>>>>>>> feature/msp-18
AWS_REGION="us-east-1"
aws ec2 create-key-pair --region ${AWS_REGION} --key-name ${CFN_KEYPAIR} --query "KeyMaterial" --output text > ${CFN_KEYPAIR}
chmod 400 ${CFN_KEYPAIR}
mkdir -p ${JENKINS_HOME}/.ssh
mv ${CFN_KEYPAIR} ${JENKINS_HOME}/.ssh/${CFN_KEYPAIR}
ls -al ${JENKINS_HOME}/.ssh