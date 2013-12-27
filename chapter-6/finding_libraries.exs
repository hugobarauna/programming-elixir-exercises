# Convert a float to a string with 2 decimal digits.
:io.format("~.2f~n", [2.0/3.0])

# Get the value of an operating system environment variable.
System.get_env("HOME")

# Return the extension component of a file name
Path.extname("dave/test.exs")

# Return the current working directory of the process
System.cwd

# Execute an command in your operating system's shell
System.cmd("date")
