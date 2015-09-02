## Passing data from C to MATLAB quickly

Matlab is really good at numerical visualisations and matrix operations, but for some problems it leaves much 
to be desired in terms of speed. Performing computations in some other fashion, eg. compiled C, is faster but
it is still a hassle to write to file from your C code, open MATLAB, open the file and finally you can view your data
only to find out that some parameter was wrong. 

binarymatlab integrates this whole process - simply write your numerical data to the standard output, separated by tabs
and these will automatically be put into a matlab vector. Furthermore, it allows for the passing of arguments. This has as an
advantage that you can even use the built-in optimizing functions in MATLAB for the discovery of minima and maxima.

### Example
Computing the fibonacci numbers using C++ and using MATLAB to plot them:

```MATLAB
% Example MATLAB program for visualizing the first 20 fibonacci numbers
amount = 20;
fibnumbers = runexec('fibonacci', num2str(amount));
plot(1:length(fibnumbers),fibnumbers)
```

```C++
// The C++ code actually generating and printing the fibonacci sequence
long current = 1;	long previous = 0;

for (int i = 0; i < amount - 1; i++) {
	std::cout << current << "\t";

	//Compute the next fibonacci number
	long next = previous + current;

	//Set the variables for the next iteration
	previous = current;
	current = next;
}
```
