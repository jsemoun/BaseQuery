cut -d " " -f9- ./Logs/importedDBS.log > temp
sed -i -e "s/\ /\\\ /g" temp
sed -i -e "s/(/\\\(/g" temp
sed -i -e "s/)/\\\)/g" temp
sed -i -e "s/^/rm\ .\/PutYourDataBasesHere\//" temp
sed -i -e "/^$/d" temp
sudo bash temp
