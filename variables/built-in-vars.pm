### Built-In Variables ###

# Perl has many special built-in variables that are global scope. These handle
# some common tasks that other languages might require a library or extra code
# to handle.

$_;

# One of the most common special variables is the $_ variable, sometimes referred to
# as dollar underscore. This is the "default" variable and many functions automatically
# operate on this.

# For example, when iterating over an array, you can do this:

my @array = qw(This will print newlines in between);

for my $element (@array) {
    print "$element\n";
}

print "_______________________________\n\n";
# Or, you can do this:

for (@array) {
    print "$_\n";
}

print "_______________________________\n\n";

# That's because when you use a for loop and  you don't create a varaible assign the element to,
# the $_ variable is automatically populated with the value. The print function, but default, prints
# the $_ varaible if it doesn't have any arguments, as shown here:

for (@array) {
    print;
}

print "\n";
print "_______________________________\n\n";
# That prints all the elements in a single line, and you probably don't want that. Instead, you can use
# the feature pragma to import the say function. say is just like print, but it automatically adds a
# newline to whatever you print. Like print, it automatically uses the value of $_ as an argument if no
# arguments are provided.

use feature 'say';

my @array = qw(This will print newlines in between);
for (@array) {
    say;
}

print "_______________________________\n\n";

### %ENV ###

# The global %ENV hash contains enviroment variables. These are variables generally outside of your program.