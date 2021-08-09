### Scalar ###

# A scalar is merely a single value.

my $celsius_temp = 37;
my $nick_name = 'Ovid';

# A scalar can be a number, string, or a reference.

#If you don't assign anyting to the variable, it has a special value called undef.

my $var; # its value is undef

# You can declare several scalars at once by putting paranthesis around them

my ( $celsius_temp, $nick_name);

### Strings ###

my $person = 'Leila';
my $wife = "Lovely";

# When using single quotes, what you see inside of the quotes is generally exatly whan you get.

# Double qoutes allows excape characters ("\n" for newline, "\t" for tab, and so on). and embed
# other variables in the string.

my $person = 'Leila';
my $wife = "Lovely $person";
print $wife, "\n"; # Lovely Leila

# Sometimes you need to include quotes in quotes.

my $city = 'R\'lyeh'; # R'lyeh
my $city = "R'lyeh"; # R'lyeh

print $city, "\n"; # R'lyeh

# q{} replaces single quotes and qq{} replaces double-quotes

my $reviewer = 'Adrian';
my $review = qq{$reviewer wrote "This book is wonderful"};

print $review, "\n";

my $letter = qq {
    Dear $reviewer,

    I really liked the subtitle that you rejected and beg you to reconsider. 
    Blah blah blah

    Sincerely,

    Ovid
};

print $letter, "\n";

### Integers and Floats ###

my $answer = 42;
my $body_temp_fahrenheit = 98.6;

# Numbers are just approximations

print int(4.39 * 100), "\n";