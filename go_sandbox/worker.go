package main

import "fmt"

func workerDemo() {

	//Worker Pool
	jobs := make(chan int, 50)
	results := make(chan int, 50)

	go worker(jobs, results)
	go worker(jobs, results)
	go worker(jobs, results)
	go worker(jobs, results)

	//worker(s) will receive from jobs, send to results concurrently
	for i := 0; i < 50; i++ {
		jobs <- i
	}
	close(jobs)

	for i := 0; i < 50; i++ {
		fmt.Println(<-results)
	}

}

func worker(jobs <-chan int, results chan<- int) { //only recieve from jobs, only send to int channel
	for n := range jobs {
		results <- fib(n)
	}
}
func fib(n int) int {
	if n < 2 {
		return n
	}
	return fib(n-1) + fib(n-2)
}
