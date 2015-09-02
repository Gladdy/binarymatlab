#include <stdlib.h>
#include <iostream>

int main(int argc, char* argv[])
{
	//The program requires an argument
	if (argc < 2) { return 1;	}

	// Convert the char* argument to an integer
	int amount = atoi(argv[1]);

	long a = 1;
	long b = 0;

	for (int i = 0; i < amount - 1; i++) {
		std::cout << a << "\t";

		long t = a + b;

		if (t < 0) { return 0; }

		b = a;
		a = t;
	}

	return 0;
}

