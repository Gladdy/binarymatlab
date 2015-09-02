function output = runexec(executable_name, arguments)
    % Execute the executable with the given arguments
    % Return the stdout of tab-separated values as a vector of doubles

    if ~iscell(arguments)
        error('Please pass the arguments as a cell array (using curly braces)');
    end
    
    %Determine the prefix (Linux and OSX require './')
    if ispc; prefix = ''; else prefix = './'; end
    
    %Construct the command to execute
    command = [prefix executable_name];
    
    %Append the arguments
    for arg = arguments
        command = [command ' ' char(arg)];
    end
    
    [status, cmdout] = system(command);
    
    if status ~= 0
        error('Compiled program did not return a success flag');
    end

    %remove trailing whitespace (the last tab)
    cmdout = strtrim(cmdout);

    %split based on the tabs into a cell array
    values = strsplit(cmdout, '\t');

    %convert from a cell array of strings into a vector of doubles
    output = str2double(values);
end

