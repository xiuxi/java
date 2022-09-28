

git fetch --all
git tag > tag.txt
java j.git_check_out
git_check_out.bat

bash.bat
git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all
git branch > tag.txt
java j.git_check_out



git fetch --all --tags --prune
git fetch --all
git tag
	section2
	section3
	section4
	section5
	section6
	section7
	section8
	section9
git checkout tags/section2
git checkout tags/section9


call gbk.bat
call bash.bat

git clone git@github.com:planetoftheweb/vue-interface.git
cd vue-interface

java j.git_clone_all_branches
D:\gitHub\java_ubuntu_windows\ubuntu proxy wsl windows 代理设置 ubuntu.txt

bash.bat

手动一行一行敲入wsl, 下载各个分支
#!/bin/bash
source /etc/environment
for branch in $(git branch --all | grep '^\s*remotes' | egrep --invert-match '(:?HEAD|master)$'); do
	git branch --track "${branch##*/}" "$branch"
	git checkout ${branch##*/}
	value=${branch##*/}
	java j.zip_without_git_folder "${value}.zip"
	chmod a+x zip.sh
	./zip.sh
done



echo github_checkout_all_branches_to_zips.sh