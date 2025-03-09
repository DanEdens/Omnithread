REM Pub public ipv4 address to topic
curl https://api.ipify.org |xargs -I {} "C:\Program Files\mosquitto\mosquitto_pub.exe" -h %awsip% -p %awsport% -t status/%DeNa%/ip -m {}
REM ipconfig|grep -m 1 IPv4|sed "s/IPv4 Address. . . . . . . . . . . : //g"|sed 's/   //g'| xargs -t -I {} rost.cmd status/%DENA%/IP {}
