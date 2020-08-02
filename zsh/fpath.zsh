# We need to add each topic folder to the zsh fpath so that they can add
# functions and completion scripts.

for topic_folder ($DOTFILES/*) if [ -d $topic_folder ]
then
    fpath=($topic_folder $fpath)
fi
