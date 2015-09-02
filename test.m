%Example program for runexec
amount = 8;
fibnumbers = runexec('fibonacci',{num2str(amount)});
plot(1:length(fibnumbers),fibnumbers)
