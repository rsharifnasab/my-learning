#!/usr/bin/python3
import sys
from time import sleep
from webbrowser import open as browser_open
from random import randint as rnd

getchar = sys.stdin.read

def sleep_print(s, t=3):
    word = ""
    for i in s:
        word = word + i
        print(word, "\r", end="")
        sleep(rnd(50*t, 100*t)/1000)
    print()


sleep_print(
    "hello,welcome to hafez fal program,niyyat first and then press enter"
    )
getchar(1)
fal = rnd(1, 495)
pre_link = "http://www.coca.ir/hafez/ghazal-"
all_link = f"{pre_link}{fal}/"
sleep_print("your fal is ready.. opening..")
print(all_link)
browser_open(all_link)
