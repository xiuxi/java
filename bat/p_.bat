pushd .
d:
cd D:\gitHub\java_ubuntu_windows
sudo chmod -R 777 ./
set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
cd D:\gitHub\ubuntu_java\
chmod a+x *.sh
git pull
git add .
git commit -m "a"
git push
java j.java
popd