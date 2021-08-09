### Hashes ###

# A hash is similar to an array, except that instead of indexing into the hash
# using integers, you use strings. You refer to the strings you index into the
# hash as keys, and the values they return are, well, values.

my %people = (
    "Alice", 1,
    "Bob", 2,
    "Ovid", "idiot",
);

my $number = $people{'Bob'};
print "Bob = $number\n";
print "Bob = $people{'Bob'}\n";
# When accessing a single value you aren't required to quote the key
print "Bob = $people{Bob}\n";

# Iterating over a hash is simple. One way is to use the keys function. This returns
# the list of keys from the hash.

# Do not depend on hash being in order. It will have a "random" output when iterating over. 
# It's not random but for simplicity it is not in a certain order everytime.

for my $name (keys %people) {
    print "$name is $people{$name}\n"
}

print "_______________________\n", "\n";
### Adding data to hash ###

# To add a new value to a hash, simply assign the new value to a key:
# Austen is key and Jane is value

$people{Austen} = 'Jane';

# That adds a new value to the hash or overwrites the value for the key Austen if it exists.

for my $name (keys %people) {
    print "$name is $people{$name}\n";
}

print "_______________________\n", "\n";

# You can add multiple key/value pairs by assigning the hash and a list:
# If any of the keys matches the original the value will get replaced.

%people = ( %people, Austen => 'Samson', Lincoln => 'Abraham');

for my $name (keys %people) {
    print "$name is $people{$name}\n";
}

print "_______________________\n", "\n";


# The " => " operator in Perl is known as the "fat comma". It generally acts just like a normal comma,
# but it has the side benefit of automatically quoting whatever is on the left side of the fat comma,
# but only if it matches the rules of an identifier.

# These are other ways to write hashes

my %people = (
    'Alice' => 1,
    'Bob' => 2,
    'Ovid' => "Idiot",
);

my %people = (
    Alice => 1,
    Bob => 2,
    Ovid => "Idiot"
);

