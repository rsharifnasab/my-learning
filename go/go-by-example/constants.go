package main

import (
	"fmt"
	"math"
)

const s string = "this is const"
const s2 = "another const"

func main() {
	fmt.Println(s)
	fmt.Println(s2)

	const pi = 3.1415926
	fmt.Printf("type of pi is %T", pi)
	fmt.Println("math sin", math.Sin(pi))

}
