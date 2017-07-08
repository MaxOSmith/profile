# Add bash config
echo "source ~/profile/.bashrc" >> ~/.bashrc

# Add emacs config
echo "(load \"~/profile/.emacs\")" >> ~/.emacs

# Add ssh config
echo "Include ~/profile/ssh/config" >> ~/.ssh/config
