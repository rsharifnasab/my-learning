#!/bin/sh
clear
find . -name '*.class' -delete

echo "comiling project"
javac -cp .:junit.jar *.java || exit
echo "compile complete"

java -cp ".:junit.jar:j2.jar"  org.junit.runner.JUnitCore TestEmployeeDetails
echo "run complete"
find . -name '*.class' -delete
