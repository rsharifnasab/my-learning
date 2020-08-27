#!/bin/sh
clear
find . -name '*.class' -delete

echo "comiling project"
echo "compiling test"
javac -cp .:junit.jar SomeTest.java || exit
echo "compile complete"

java -cp .:junit.jar:j2.jar  org.junit.runner.JUnitCore SomeTest || exit
echo "run complete"
find . -name '*.class' -delete
