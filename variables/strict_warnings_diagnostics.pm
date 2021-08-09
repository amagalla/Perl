### Strict, Warnings, and Diagnostics

use strict;
use warnings;
use diagnostics;

# They are pragmas. A pragma is a special module, the name of which
# is usually written in all lowercase letters, which alters the compile
# or runtime behavior of your program.

# You can leave these pragmas out when writing your softwarem but that's a bad idea.
# They save so much development by protecting you from silly mistakes, you'd be insane
# to not use them.

### strict ###

# strict covers the following:

use strict 'vars';
use strict 'subs';
use strict 'refs';

# However, you usually wnat to write this (which means the same thing):

use strict;

# The vast majority of the time, strict means "declare your variables." If you forget
# to do so, your program will not run.
# For example, this will not run:

my $name = 'Danny';
my $nick = $naem;

# You get a compile-time error because you mispelled $name.

### warnings ###

# use warning generally just warns you about bad things your program is doing. But, in reality,
# these things might be okay. Your program will run, but warnings are printed when your code thinks
# you're doing something dodgy. You should look at the warnings to find out what they actually mean.
# The following code generates a warning about an uninitialized value:

my $x;
my $y = $x + 2;

### diagnostics ###

# This gives long-winded explanations of what went wrong.