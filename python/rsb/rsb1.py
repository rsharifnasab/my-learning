# import keyboard #Using module keyboard
import time
import os
import tty
import sys
import termios
from time import sleep
import random
rnd = random.randint


def getch():
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(sys.stdin.fileno())
        ch = sys.stdin.read(1)
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    return ch


status = None
alive = True
score_p1 = 0
score_p2 = 0


def sts_check():
    status = input("one player[default] or two player ?")
    if status == "one" or status == "1" or status == "one player" or status == "1p" or status == "":
        status = True
    elif status == "two" or status == "2" or status == "two player" or status == "2p":
        status = False
    else:
        print("error pls try again")
        sts_check()
    return status


def sleep_print(s, t=8):
    word = ""
    for i in s:
        word = word + i
        print(word, "\r", end="")
        sleep(rnd(50*t, 100*t)/1000)
    print()


def instruc(status):
    sleep_print("here is few instruction about what shoud you do", 1)
    sleep_print("player1 should press (+) key after seeing **bang**", 1)
    if status == False:
        sleep_print("player2 should press (space) key after seeing **bang**", 1)
    sleep_print("press your botton to continue", 1)
    p1 = False
    p2 = False
    if status:
        p2 = True
    while True:
        char = getch()
        if char == 'p':
            return
        if char == '+':
            p1 = True
        if char == ' ' and status == False:
            p2 = True
        if (p1 == True and p2 == True):
            break
    sleep_print("ok now the game is starting...", 1)


def print_scores():
    print("player 1 :", score_p1)
    print("player 2 :", score_p2)


def win(player):
    if player == "p1":
        sleep_print("player1 won", 2)
        global score_p1
        score_p1 += 1
    else:
        sleep_print("player2 won", 2)
        global score_p2
        score_p2 += 1
    print_scores()


def recheck():
    sleep(1.2)
    global alive
    sleep_print("do you want to play again ? (y or n)", 1)
    char = getch()

    if char == 'y' or char == '+' or char == ' ':
        alive = True
    elif char == 'n' or char == '^[':
        alive = False
    else:
        print("error pls try again")
        recheck()


sleep_print("welcome to READY STEADY BANG game", 1)
status = sts_check()
instruc(status)

mohlat = -1
if status:
    mohlat = rnd(10000, 50000)
time = 0
while alive:
    sleep(rnd(100, 300)/1000)
    sleep_print("ready", 5)
    sleep(rnd(900, 3000)/1000)
    sleep_print("steady", 5)
    sleep(rnd(1000, 4200)/1000)
    print("**bang**")

    while True:
        char = getch()
        if char == 'p':
            break
        if char == '+':
            win("p1")
            break
        if char == ' ' and status == False:
            win("p2")
            break
        else:
            time += 1
            if time > mohlat and status:
                win("p2")
                break

    recheck()
print("pls rate our game 5stars in GIThub :) ")
print("see U soon")
