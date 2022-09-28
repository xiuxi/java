rem call cl64.bat
echo /etc/alternatives/cuda-11/bin/nvcc -o square square.cu
nvcc -o %1 %1.cu
rem chmod 777 $1
%1