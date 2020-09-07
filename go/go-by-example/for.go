package main

import (
	"fmt"
)

func main() {
	i := 0
	for {
		if i == 3 {
			break
		}
		fmt.Printf("salam %d\n", i)
		i++
	}
	fmt.Println("i after loop : ", i)

	s := 1
	for {
		break
	}
	s++
}
