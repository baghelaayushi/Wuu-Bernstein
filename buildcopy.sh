#!/usr/bin/env bash

# uncomment the next line if you want to remove the existing bin directory (if it exists) before building your project
rm -rf bin2

mkdir bin2
# My java files are in com/example/client, com/example/server, and com/example/main_code.
# The main function is located in com/example/main_code/main.java

#cp -R com/ bin/

# compile the .java files.
# -d is used to specify the destination directory for the .class files
# bin must be in the classpath because I'm compiling from outside of bin
#I need to set -cp to be bin/ because I'm building from outside of bin.
javac -sourcepath src -d bin2 -cp bin2/ src/main/java/**/**.java -cp bin2/ src/main/java/**.java -cp src/dependencies/gson-2.8.6.jar:src/dependencies/commons-lang3-3.5.jar

cp -R src/dependencies/ bin2/
# copy the run.sh script from the root of the project into the bin directory
cp run.sh bin2/


echo Done!

exit 0