
sudo apt install unzip
useradd -m -d /home/terraria -s /bin/bash -c "Terraria server user" -U terraria #create a user  
cd /home/terraria   
curl -O https://terraria.org/api/download/pc-dedicated-server/terraria-server-1423.zip #download serverfiles
unzip terraria-server-1423.zip     #take the files out of the archive 
mv /home/terraria/1423/Linux  /home/terraria/       
mv /home/terraria/1423/Windows/serverconfig.txt /home/terraria/Linux/

cd /home/terraria/Linux

echo "#!/bin/sh
./TerrariaServer -config serverconfig.txt " > terrarialaunch.sh    #create launch file 

chmod +x terrarialaunch.sh   



sudo chmod +x TerrariaServer.bin.x86_64
sudo chmod +x TerrariaServer

cd /home/terraria/Linux
echo "launch terrarialaunch.sh to start the server found in /home/terraria/Linux"
