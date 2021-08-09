### Scope ###

# Using scope is a way of ensuring that variables declared in one part of your program
# are not available in other portions of the program. This helps to prevent unrealated
# code from accidentally changing those values.

### my Variables ###

# Variables declared with my are referred to as lexically scopred. This means that they
# do not exist outside of the scope in which they are declared. This generally means file
# scoped or block scoped.

# File scoped means that any my variable declared outide of the block is visible from that
# point on to the end of the file in which it is declared. This also means that if you have
# several packages in a file the my varaible in questions will be visible to all pavkages
# in that file. You generally want to avoid that.

# However, if they are declared inside of a block, they remain scoped to that block. In Perl,
# a block scope is simply one or more Perl statements delimited by curly braces.


my $answer = 42;

{
    my $answer = 'fort-two';
    print "$answer\n"; # => 'forty-two'
}

print "$answer\n"; # => 42

# This is because the my declaration inside of the block "hides" the varaible from the scope
# outside of the block.

my @numbers = (1, 2, 3, 4);

for my $number (@numbers) {
    my $reciprocal = 1 / $number;
    print "The reciprocal of $number is $reciprocal\n";
}

print "$number\n"; # => undefined
print "$reciprical\n"; # => undefined

### Declaring Package Varaible with our

# The our varaible says "This variable is ours". Do not use this unless you need to share that
# variable outside of your package.

### Using Local Varaibles ###

# Sometimes you want to limit the scope of your package variables. You can't use the my keyword
# to declare them, but you can use local to make it clear that they're "localized" to a given scope.
# They'll retain their value in the outer scope but you're free to change them in the inner scope, if needed.

our $answer = 42;

{
    local $answer = 57;
    print "$answer\n"; # => 57
}

print "$answer\n"; # => 42