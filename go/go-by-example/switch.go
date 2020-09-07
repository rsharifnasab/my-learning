package main

import (
	"fmt"
	"time"
)

func one() int {
	return 1
}

func main() {
	i := 2
	switch i {
	case one() + 1: // not constants
		fmt.Println("this is 2")
		break
		fmt.Println("let's continue 2")
		break
	case 3:
		fmt.Println("333")
	default:
		fmt.Println("default")
	}

	var s string
	switch time.Now().Weekday() {
	case time.Friday, time.Thursday:
		s = "holiday"
	default:
		s = "not holiday"
	}
	fmt.Println(s)

	someFunc := func(i interface{}) {
		switch t := i.(type) {
		case bool:
			fmt.Println("bbboool")
		case int:
			fmt.Println("this is int")
		default:
			fmt.Printf("hahah %T , %T \n", i, t)
		}
	}
	fmt.Printf("type of someFunc: %T\n", someFunc)

	someFunc(true)
	someFunc(1)
	someFunc("hey")

}
