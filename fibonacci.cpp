#include <stdlib.h>
#include <iostream>

int main(int argc, char* argv[])
{
	//The program requires an argument
	if (argc < 2) { return 1;	}

	// Convert the char* argument to an integer
	int amount = atoi(argv[1]);

	long current = 1;
	long previous = 0;

	for (int i = 0; i < amount - 1; i++) {
		std::cout << current << "\t";

		//Compute the next fibonacci number
		long next = previous + current;

		//Set the variables for the next iteration
		previous = current;
		current = next;
	}

	return 0;
}

