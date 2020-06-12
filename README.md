# tbash
bash settings
A. pull this repo in home directory first. Then run bash_setup.sh. Then subsequent steps are not needed.

  1. remove ~/.bash_profile
  2. pull tbash repo in ~
  3. symlink ~/tbash/.bash_profile to ~/.bash_profile

  ads~$ rm .bash_profile
  ads~$ ln -s ~/tbash/.bash_profile ~/.bash_profile

  4. Create a ~/.bash_profile.local 
  put local settings in this file. A sample file is in repo.

B. Install dependicies in vim_setup.sh and then run vim_setup.sh to setup vim.
