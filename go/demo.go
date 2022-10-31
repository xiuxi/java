package g

import (
	"fmt"
	"strconv"
	"time"
)

var pizzaNum = 0
var pizzaName = ""

func makeDough(stringChan chan string) {
	pizzaNum++

	pizzaName = "Pizza #" + strconv.Itoa(pizzaNum)
	fmt.Println("Make Dough and Send for Souce ")
	stringChan <- pizzaName

	time.Sleep(time.Millisecond * 10)
}
func addSource(stringChan chan string) {
	pizza := <-stringChan
	fmt.Println("Add Souce and Send ", pizza, "for toppings")
	stringChan <- pizzaName

	time.Sleep(time.Millisecond * 10)
}

func addToppings(stringChan chan string) {
	pizza := <-stringChan
	fmt.Println("Add Toppings to", pizza, "and ship")

	time.Sleep(time.Millisecond * 10)
}

func Demo() {
	stringChan := make(chan string)
	for i := 0; i < 3; i++ {
		go makeDough(stringChan)
		go addSource(stringChan)
		go addToppings(stringChan)
		time.Sleep(time.Millisecond * 5000)
	}

}
