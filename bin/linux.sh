#!/bin/bash
#
## log in the type of file system used
DATE=$(date "+%Y-%m-%d %H:%M:%S")

FILE="linuxsetup.log"

if [[ $(uname) -ne 'linux' ]];
then 
	echo "Error; This system is not a Linux system on $DATE.">> $FILE
	exit 1
else 
	echo "Entry made using Linux on $DATE" >> $FILE
fi


# Create a directory named .TRASH if it does not exist already

TRASH_DIR="$HOME/.TRASH"

if [ ! -d "$TRASH_DIR" ]; then
    mkdir "$TRASH_DIR"
fi

#Change vimrc to .bup_vimrc

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.bup_vimrc
    echo "Current .vimrc file was changed to .bup_vimrc." >> $FILE
fi

cp ../etc/vimrc ~/.vimrc

