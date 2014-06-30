echo IP TO DROPBOX SCRIPT v1.0
echo made by burakgon
echo
echo
echo "Do you need your IP when you are not at home? Do you want to connect via SSH to your computer worldwide but you have a dynamical IP?"
echo
echo "You welcome!"
echo
echo
echo "Create need_ip folder on Dropbox to get your IP"
echo "-----------------------------------------------"
echo "Service is running..."
echo
while :
do
if [ -d ~/Dropbox/need_ip ];
then
echo "IP REQUEST DETECTED"
date
wget -qO- http://ipecho.net/plain > ~/Dropbox/your_ip.txt
rm -R ~/Dropbox/need_ip
echo
echo "Your IP is:"
cat ~/Dropbox/your_ip.txt
echo
echo "Your IP added to Dropbox folder"
echo "-------------------------------"
echo
echo "Service is running..."
else
sleep 4
fi
done
