#!/bin/sh
clear
find . -name '*.class' -delete

echo "comiling project"
javac -cp . Main.java || exit
echo "compiling test"
javac -cp .:junit.jar MainTest.java || exit
echo "compile complete"

java -cp .:junit.jar:j2.jar  org.junit.runner.JUnitCore MainTest || exit
echo "run complete"
find . -name '*.class' -delete
