!/bin/bash

echo '############ ATUALIZANDO O SISTEMA #############'

echo ' Atualizando os pacotes com correções'
apt-get update
echo 'Atualizando os pacotes com uma nova versão'
apt-get upgrade -y

echo

echo 'ATUALIZADO COM SUCESSO ! ! !'
date

echo 'CRIANDO DIRETORIOS'

mkdir /root/Tools
mkdir /root/Wordlist
mkdir /root/Scripts

echo
echo 'DIRETORIOS CRIADOS ! ! !'

echo
echo 'INSTALANDO PACOTES'

echo
echo 'INSTALANDO O GOLANG'
#Acessar a URL https://go.dev/doc/install e verificara versao mais atualizada
wget https://go.dev/dl/go1.18.4.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
apt install -y golang-go

#pip3
echo
echo 'INSTALANDO O PIP3'
apt-get install -y python3-pip
pip3 --version
echo

#snapd
echo 'INSTALANDO O SNAP'
apt install -y snapd
echo

########################################################################


echo '##############################################'
echo '#                                            #'
echo '#         INSTALANDO AS FERRAMENTAS           #'
echo '#                                            #'
echo '##############################################'
echo


#sqlmap
echo 'INSTALANDO SQLMAP'
apt install sqlmap -y
echo

#Nmap
echo 'INSTALANDO Nmap'
sudo apt-get install nmap
echo

#dirb
echo 'INSTALANDO DIRB'
sudo apt install dirb
echo

#gobuster
echo 'INSTALANDO GOBUSTER'
sudo apt install gobuster
echo

#wAFW00F
echo 'INSTALANDO WAFW00F'
sudo apt install wafw00f
echo

#hashcat
echo 'INSTALANDO HASHCAT'
sudo apt install hashcat
echo

#john
echo 'INSTALANDO JOHN'
sudo apt install john
echo

#wireshark
echo 'INSTALANDO WIRESHARK'
sudo apt install wireshark
echo

###################################################################

echo '##############################################'
echo '#                                            #'
echo '#          FERRAMENTAS UTILIZANDO O GIT          #'
echo '#                                            #'
echo '##############################################'
echo

#sublist3r
echo 'INSTALANDO SUBLISTER'
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
pip3 install -r requirements.txt
cd /root/
echo

#linenum
echo 'INSTALANDO O LINENUM'
git clone https://github.com/rebootuser/LinEnum.git
cd LinEnum


################################################################

echo '##############################################'
echo '#                                            #'
echo '#             FERRAMENTAS UTILIZANDO GO          #'
echo '#                                            #'
echo '##############################################'
echo

#ffuf
echo 'INSTALANDO FFUF'
go install github.com/ffuf/ffuf/v2@latest
mv /root/go/bin/* /usr/bin
echo

###########################################################################

echo '##############################################'
echo '#                                            #'
echo '#                BAIXANDO WORDLIST               #'
echo '#                                            #'
echo '##############################################'
echo

#WORDLIST
cd /root/Wordlist
wget https://wordlists-cdn.assetnote.io/data/manual/raft-large-extensions.txt
wget https://wordlists-cdn.assetnote.io/data/manual/raft-large-directories.txt
wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_apiroutes_2022_05_28.txt

cd /root

#SecList
cd /root/Wordlist
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip \
  && unzip SecList.zip \
  && rm -f SecList.zip
 cd /root

echo '####### INSTALAÇÃO REALIZADA COM SUCESSO #######'
date
