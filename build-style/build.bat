echo build the project.

@rem clean phase
RD /s/q .\build-bat\classes\ .\build-bat\jar\

MD .\build-bat\classes\ .\build-bat\jar

@rem compile phase
set srcdir=.\src\main\java\
set classpath=.\libs\;.;%JAVA_HOME%\lib\;%classpath%
set outdir=.\build-bat\classes\
@rem javac -sourcepath  .\src\main\java\ -d .\build-bat\classes\  .\src\main\java\org\trump\vincent\Application.java .\src\main\java\org\trump\vincent\model\BaseBean.java
dir /s /B %srcdir%\**.java>source.list
javac -sourcepath %srcdir% -classpath %classpath% -d %outdir% @.\source.list

@rem create Manifest file
echo Main-Class: org.trump.vincent.Application>Manifest.mf

@rem Assemble jar archive
jar -cfm .\build-bat\jar\App.jar Manifest.mf -C .\build-bat\classes\ .

pause

@rem run the application
java -jar .\build-bat\jar\App.jar