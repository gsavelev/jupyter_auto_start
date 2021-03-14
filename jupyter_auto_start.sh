#change to the root directory of your Jupyter notebooks
cd ~

#kill previous process with ID saved in bgPID.txt
kill -9 $(<.bgJupyterPID.txt)

#stdout to null (&> /dev/null)
#then run as background service (&)
/usr/local/bin/jupyter-notebook &> /dev/null &

#save the process ID from above line ($!) to .bgJupyterPID.txt
echo $! > .bgJupyterPID.txt
