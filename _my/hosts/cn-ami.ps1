$ip=get-content -path ip -head 1
$cmd="start ssh.exe -i _key\denie.pem  ec2-user@$ip"
cmd /c $cmd 
