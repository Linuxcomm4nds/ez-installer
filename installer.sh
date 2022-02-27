#!/bin/bash

read -p "For this installation you have to give the sudo password to create the command but you can also just do it manually . Do you wanna continue?(y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Now we will change the directory';
	echo '';
	cd /usr/local/bin
	echo '';
	echo '';
	echo 'Now we will download the file from github (Needs sudo rights)'
	sudo wget https://raw.githubusercontent.com/Linuxcomm4nds/ez/main/ez
	echo '';
	echo '';
	echo 'Now we will make it executable (Needs sudo rights)';
	sudo chmod +x ez
	echo '';
	echo '';
	echo '';
	if ! command -v nmap &> /dev/null 
	then 
        	read -p "Do you wanna install Nmap if not some commands wont work?(y/n)" -n 1 -r
        	if [[ $REPLY =~ ^[Yy]$ ]]
        	then
                	sudo apt install nmap
                	echo '';
        	fi
        
	fi
	if ! command -v anonsurf &> /dev/null 
	then 
        	read -p "Do you wanna install Anonsurf if not you cant use the command to change your IP?(y/n)" -n 1 -r
        	if [[ $REPLY =~ ^[Yy]$ ]]
        	then
                	cd $HOME;
                	mkdir Anonsurf && cd Anonsurf
                	git clone https://github.com/Und3rf10w/kali-anonsurf.git
                	sudo ./installer.sh
                	echo '';
        	fi
	fi
	if ! command -v openvpn &> /dev/null 
	then 
        	read -p "Do you wanna install Openvpn if not you cant use the inbuild connection to Hack the box (This is only needed to connect to HTB)?(y/n)" -n 1 -r
        	if [[ $REPLY =~ ^[Yy]$ ]]
        	then
        	        sudo apt install openvpn
                	echo '';
        	fi
	fi

	echo 'DONE ! Thanks for using Ez commands';
echo '###########################			###########################';
echo '###########################			###########################';
echo '###########################			###########################';
echo '#########			                                    #######';
echo '#########			                                   #######';
echo '#########			                                  #######';
echo '#########			                                 #######';
echo '#########			                                #######';
echo '#########			                               #######';
echo '#########			                              #######';
echo '#########			                             #######';
echo '###########################			            #######';
echo '###########################			           #######';
echo '###########################			          #######';
echo '###########################			         #######';
echo '#########			                        #######';
echo '#########			                       #######';
echo '#########			                      #######';
echo '#########			                     #######';
echo '#########			                    #######';
echo '#########			                   #######';
echo '#########			                  #######';
echo '#########			                 #######';
echo '###########################			###########################';
echo '###########################			###########################';
echo '###########################			###########################';
echo '###########################			###########################';
fi
