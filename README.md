# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.


The linux.sh script performs a set of actions, including checking if the current system is Linux. If not, the script logs this and dumps an error message in the ‘linux.log’ file, after which it exits. The system also creates a .TRASH directory while changing the .vimrc file’s name to bup_vimrc. The file also overwrites etc/vimrc to .vimrc and adds the line ‘source ~/.dotfiles/etc/bashrc_custom’ into the .bashrc file.

The Cleanup.sh file is meant to clean after linux.sh performs its tasks, the cleanup.sh removes unwanted files, including /vimrc in the home directory and the last line appended in the .bashrc file.

The Makefile allows for dependency configuration and defining the order or execution of the scripts. It also sets the right permission for execution
