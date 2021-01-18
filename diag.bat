set CLASSPATH=%CLASSPATH%;E:\Projects\Scraper\JavaParser\
call build.bat %1
call grun.bat %1 root -diagnostics -gui %2
