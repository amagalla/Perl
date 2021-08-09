### Slices ###

# A slice is a way to select a few elements of an array, list, or hash instead of the entire set of data.

### Array slices ###

my @names = qw(Alice Bill Cathy Doug);
my @men = @names[1, 3];
my @women = @names[0, 2];

print "@men\n";
print "@women\n";

# It's the square brackets ([]) that tell you what type of variable you're indexing into (an array, in this case)
# not the leading sigil. 


### Hash Slices ###

# You can take a slice of a hash. Because you use the leading sigil to indicate how you're accessing the variable, you
# use the @ sign again, but with curly braces.

my %nationalities_of = (
    Ovid => 'Greek',
    'John Davidson' => 'Scottish',
    Tennyson => 'English',
    Poe => 'Tacky',
);

my @nationalities = @nationalities_of{ 'Ovid', 'Tennyson' };

print "@nationalities\n";