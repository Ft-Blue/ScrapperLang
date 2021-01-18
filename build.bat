rm -rf ./JavaParser/* ./PythonVisitors/*
call antlr4.bat -Dlanguage=Java %1.g -o ./JavaParser
call antlr4.bat -visitor -Dlanguage=Python3 %1.g -o ./PythonVisitors
call javac ./JavaParser/%1*.java