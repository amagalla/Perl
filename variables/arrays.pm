### Arrays ###

# An array is an ordered list of scalars.

my @even = ( 2, 4, 6, 8, 10 );

# You can mix strings and numbers

my $nine = 9;

my @stuff = ( 7, 'of', $nine);

# This tells perl to print every item one after another until newline at the end.
print @stuff, "\n"; # 7of9
# This tells perl to 
print "@stuff\n"; # 7 of 9

# Use $ to get value from an array.

my @words = ("and", "another", "thing");

my $first = @words[0];
my $second = @words[1];
my $third = @words[2];

print $first, "\n";

# Use -1 to find the last element of the array

my $last = @words[-1];

print $last, "\n";

# Of course any element can get replaced

my @array = ("this", "that");

@array[1] = "replaced";

print "@array\n";

# Shortcut to only assign literals use qw()

my @odds = qw(1 3 5 Charlie);

print "@odds\n";

### Iterating over an array ###


my @arr = qw(iterating over an array);

for my $element (@arr) {
    print "$element\n";
}