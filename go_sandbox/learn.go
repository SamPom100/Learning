package main

import (
	"fmt"
	"strconv"
	"sync"
	"time"
)

func main() {
	fmt.Println("Hello, World!")

	//Basic vars
	var name string = "Sam"
	lastName := "Pom"
	age, status, tryingGo := 21, "intern", true

	fmt.Println(name, lastName)
	fmt.Println(age, status, tryingGo)

	//Array
	myArray := [3]string{"Sam", "Pom", "Sam"}
	myArray[0] = "John"
	fmt.Println(myArray)

	//Map
	myMap := make(map[string]string)
	myMap["name"] = "Sam"
	myMap["lastName"] = "Pom"
	fmt.Println(myMap["name"])

	for x := 0; x < 10; x++ {
		fmt.Println(x)
	}

	//Loop
	if age > 20 {
		fmt.Println("You are older than 20")
	} else {
		fmt.Println("You are younger than 20")
	}

	//Pointer
	var year int = 2022
	var pointYear *int = &year
	fmt.Println(pointYear)

	//Normal Function
	loopFunc(3)

	//Goroutine
	go loopFunc(5)
	go loopFunc(8)

	//Not a useful solution to get goroutines to execute
	//fmt.Println("Press enter to terminate")
	//fmt.Scanln()

	//Go Routines with Wait Groups
	var wg sync.WaitGroup
	wg.Add(1) //one goRoutenine to wait for

	//instead of passing WG to loopFunc, we can wrap it in anonymous insta execute function
	go func() {
		loopFunc(10)
		wg.Done() //dec counter by one
	}()

	wg.Wait() //wait until all goroutines are done (counter is zero)

	//Channel
	c := make(chan string)
	go usesChannel(10, c)

	c2 := make(chan string)
	go usesChannel(15, c2)

	msg := <-c //receive message from channel, blocking operation
	fmt.Println(msg)

	for {
		msg, open := <-c //receive message and status from channel, blocking operation
		if !open {
			break
		}
		fmt.Println(msg)
	}

	for msg := range c2 { //nicer way to do what we did above
		fmt.Println(msg)
	}

	//Select from channels
	c3 := make(chan string)
	c4 := make(chan string)

	go func() {
		for i := 0; i < 10; i++ {
			c3 <- "Every 500ms"
			time.Sleep(time.Millisecond * 500)
		}
	}()

	go func() {
		for i := 0; i < 10; i++ {
			c4 <- "Every 1s"
			time.Sleep(time.Second)
		}
	}()

	/*
		Even though C3 has a message every 500ms, this solution blocks waiting for C4 every 1s

		for {
			fmt.Println(<-c3)
			fmt.Println(<-c4)
		}

	*/

	//select to recieve from whichever channel is ready
	for i := 0; i < 20; i++ {
		select {
		case msg1 := <-c3:
			fmt.Println(msg1)
		case msg2 := <-c4:
			fmt.Println(msg2)
		}
	}

	workerDemo()

}

func loopFunc(value int) {
	for i := 0; i < value; i++ {
		fmt.Println("Loop: ", value, "Value: ", i)
		time.Sleep(time.Second / 4)
	}
}

func usesChannel(value int, c chan string) {
	for i := 0; i < value; i++ {
		c <- "Hello " + strconv.Itoa(i) //send message to channel
		time.Sleep(time.Second / 4)
	}

	c <- "Done" //send message to channel
	close(c)
}
