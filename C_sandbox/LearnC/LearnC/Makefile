.PHONEY: clean

assembly:
	@echo "By hand preprocess"
	gcc -E main.c > main_preprocessed.c

	@echo "By hand compile"
	gcc -S main_preprocessed.c  -o main.s

	@echo "By hand assemble"
	gcc -c main.c -o main.o

	@echo "By hand link"
	gcc main.o -o main

assemblySKIP:
	@echo "Building executable..."
	gcc -o main main.c

clean:
	@echo "Cleaning up..."
	rm -f *.o 
	rm -f *.s 
	rm *.o $(objects) main





