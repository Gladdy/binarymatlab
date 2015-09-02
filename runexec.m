function output = runexec(executable_name, arguments)

  %create a well formed command and execute the command
  command = [executable_name, ' ', arguments];
  [status, cmdout] = system(command);

  if status ~= 0
      error('Compiled program did not return a success flag')
  end

  %remove trailing whitespace (the last tab)
  cmdout = strtrim(cmdout);

  %split based on the tabs into a cell array
  values = strsplit(cmdout, '\t');

  %convert from a cell array of strings into a vector of doubles
  output = str2double(values);

end

