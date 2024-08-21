inst_ip=$(curl http://checkip.amazonaws.com)
if [ $1 = "start" ]; then
       echo "starting"
	grep -ril "98.81.108.175:8080" |xargs sed -i "s|98.81.108.175:8080|$inst_ip:8080|g"
	python3 ./manage.py runserver 0:8080 2> /dev/null > /dev/null &
elif [ $1 = "stop" ]; then
       echo "stoping"
       pkill -f runserver
	grep -ril "$inst_ip:8080" |xargs sed -i "s|$inst_ip:8080|98.81.108.175:8080|g"	

fi
