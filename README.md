# ScrapperLang
Building a higher level language to build web scrapping scripts

# Setup
<ul>
    <li>Make sure you have the JDK installed (for instance <a href="https://www.oracle.com/java/technologies/javase-jdk15-downloads.html">here</a>) and that path_to_jdk/bin is in your PATH variable.</li>
    <li>Setup ANTLR v.4 y following the instructions in the <a href="https://github.com/antlr/antlr4/blob/master/doc/getting-started.md">following page</a>. Try to run the <a href="https://github.com/antlr/antlr4/blob/master/doc/getting-started.md#a-first-example">Hello World</a> example.</li>
    <li>Install <a href="https://pypi.org/project/antlr4-python3-runtime/">antlr4-python3-runtime</a></li>
    <li>You are ready to go! </li>
</ul>

# Running the program
To compile the program, use the following command:
<pre>
antlr4 -Dlanguage=Java Scrapper.g -o ./JavaParser
antlr4 -visitor -Dlanguage=Python3 Scrapper.g -o ./PythonVisitors
javac ./JavaParser/Scrapper*.java
</pre>
Then use the following command to analyze the code in `filename`:
<pre>
set CLASSPATH=%CLASSPATH%;PATH_TO_PROJECT\JavaParser\
grun Scrapper root -diagnostics -gui <i>filename</i>
</pre>
