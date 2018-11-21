@ECHO OFF
SETLOCAL
ECHO ** Installing Apache Ant
CD %~dp0
CALL ..\scripts\setup-environment.bat x

REM install apache-ant in this folder
CALL bash -c "wget -nv -O apache-ant.zip -nc http://mirror.easyname.ch/apache//ant/binaries/apache-ant-1.10.5-bin.zip && unzip -q apache-ant.zip && rm apache-ant.zip && f=(./*) && mv ./*/* . && rmdir "${f}""
ENDLOCAL
