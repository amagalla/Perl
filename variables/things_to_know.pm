# These statements force you to properly declare most variables and subroutoines, and warn you
# when you're doing silly things. diagnostics gives you an extended description of what you did wrong
# along with suggestions on how to fix it.

use strict;
use warnings;
# use diagnostics;


# my function is the most common way to declare a variable in perl. This is
# visible only to the current scope.

# The leading punctuation is called a sigil.

my $nick_name = 'Ovid';
my @cats = ( 'Ovid', 'Arthur');
my $nick = $nick_name;

print $nick;

# Perl names must start with a leading letter or underscore. You can optionally follow that with one or
# more letters, numbers, or underscores.

# Do not start variables with a number or '-'.

# The following are valid variable names:

my $x;
my $foo;
my $_some_1;
# This is bad
my $DontMakeVariableNamesLikeThis;
# Good
my $make_names_like_this_instead;
my $item_3;