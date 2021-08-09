### Context ###

# Context means an expression can change its value based on what the calling
# code expects to recieve.

# There are three main types of context: scalar, list, and void.

### Scalar Context ###

my $number_of_things = @things_in_common;
my $number_of_things = scalar @things_in_common;
my $number_of_things = ('liars', 'fools', 'certain politicians');
my $number_of_things = %hash_example;

# When dealing with assigning values to variables, what you have on the left side
# of the = determines the "context" on which you're evaluating the right side.
# So if you have scalar on the left, you have a scalar context.

### Arrays in Scalar Context ###


my @things_in_common = ('liars', 'fools', 'certain politicians');
my $number_of_things = @things_in_common;

print "$number_of_things\n"; # => 3

# The $number_of_things is equal to 3 which is the number of elements in @things_in_common
# That's because the scalar context value of an array returns the number of elements in that array.

# If you want to force scalar context, you can use the scalar keyword, as shown here:

my @things_in_common = ('liars', 'fools', 'certain politicians');
my $number_of_things = scalar @things_in_common;
print "$number_of_things\n"; # => 3

# The second line has exactly the same meaning with or without the scalar keyword, but it does make it
# explicit that you meant scalar context and weren't trying to assign an element of the array to $number_of_things.

# The scalar keyword is also essential when you want to force scalar context and not list context. So, the following
# is probably not correct:

my @things_in_common = ('liars', 'fools', 'certain politicians');
my %count_for = (useless_things => @things_in_common);
print "$count_for{useless_things}\n"; # => liars

# With a comma operator, whether you deal with the regular comma or the fat comma (=>), you are using list context, so you
# can fix the previous snippet with the scalar keyword, as shown here:

my @things_in_common = ('liars', 'fools', 'certain politicians');
my %count_for = (useless_things => scalar @things_in_common);
print "$count_for{useless_things}\n"; # => 3

### Lists in Scalar Context ###

# If you force scalar context with a list (again, an array is a container for a list). whatever is on the left side of each
# comma is evaluated, the result is thrown away, and the right side is evaluated. That leads to common errors like this:

my $number_of_things = ('liars', 'fools', 'certain politicians');
print "$number_of_things\n"; # => certain politicians

# This prints certain politicians instead of the number 3. Thus, you usually don't want to use a list in scalar context, use
# an array instead.

### Hashes in Scalar Context ###

# Naturally, you can also use scalar context with a hash, as shown here:

my %hash = (1 => 2);
print scalar %hash, "\n";

# This prints somethins like 1/8 which is useless. It has it's use cases, but not common to do at all.

### List Context ###

# You have list conect when left-side value expects a list. Here's how to copy and array to another array:

my @old_array = qw(I'm an array and will get copied);

my @copy = @old_array;

print "@copy\n";

# This is a "shallow" copy in that you're copying only the top-level elements. 

# You can also assign a has to an array:

my %order_totals = (
    Charles => 13.2,
    Valerie => 17.9,
    'Billy Bob' => 0,
);

my @flattened = %order_totals;

print "@flattened\n"; # => Billy Bob 0 Charles 13.2 Valerie 17.9

# That "flattens" the key/value pairs in the hash into a list.

# One of the nice things about list conext you can force it with paranthesis. For example, if you want to
# assign the first element of an array to a scalar, just put paranthesis around the scalar:

@swords = qw(katana wakizashi);

my $number_of_words = @swords;

my ($left_hand) = @swords;

print "$left_hand\n"; # => katana

# You aren't limited to a single character:

my ($left_hand, $right_hand) = @swords;

print "$left_hand | $right_hand\n";

# You can easily swap values in Perl

($right_hand, $left_hand) = ($left_hand, $right_hand);

print "$left_hand | $right_hand\n";

# You can mix scalars and other variables with this:

my ($first, @extra) = (1, 2, 3, 4);
print "$first | @extra\n"; # => 1 | 2 3 4

my (@extra, $last) = (1, 2, 3, 4);

print "@extra | $last\n"; # => 1 2 3 4 |

# @extra took all values and $last is undefined