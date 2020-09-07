package main

import "fmt"

func main() {
	if a := 3; a == 2 {
		fmt.Println("2 is 2")
	} else if b := -1; a < 3 {
		fmt.Println("a is less than 3")
		fmt.Println("b is ", b)
	} else {
		fmt.Println("a is none")
		fmt.Println("b is still ", b)
	}
}
