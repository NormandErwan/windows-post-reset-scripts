cd ~

ssh-keygen -t rsa -b 4096 -C "normand.erwan@protonmail.com"

echo
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
clip < ~/.ssh/id_rsa.pub
echo
read -p "Your SSH key has been copied to your clipboard: add it on yout GitHub account."

echo
git init
git remote add origin git@github.com:enormand/shell-profile.git
git pull origin master
git branch --set-upstream-to=origin/master master

echo
curl -C - -o diff-so-fancy https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy