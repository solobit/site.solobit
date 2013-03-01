
# Introduction into programming

> Computer programming is the process of designing , writing, testing
, debugging , and maintaining the source code of computer programs .
This source code is written in one or more programming languages.
>
> Ongoing debate is the extent to which the programming language
used in writing computer programs affects the form that the final
program takes. This debate is analogous to that surrounding the
Sapir–Whorf hypothesis in linguistics and cognitive science, which
postulates that a particular spoken language's nature influences the
habitual thought of its speakers.
>
> [source: wikipedia][01]

Popular programming languages of the modern era include ActionScript

C++

``` c++
// function example
#include <iostream>
using namespace std;

int addition (int a, int b)
{
  int r;
  r=a+b;
  return (r);
}

int main ()
{
  int z;
  z = addition (5,3);
  cout << "The result is " << z;
  return 0;
}
```


C#
, Haskell , HTML with PHP , Java , JavaScript , Objective-C , Perl , Python ,
Ruby , Smalltalk , SQL , Visual Basic , and dozens more. Although these high-
level languages usually incur greater overhead , the increase in speed of modern
computers has made the use of these languages much more practical than in the
past.



# Expressions

Expression: Something which evaluates to a value. Example: 1+2/x

``` coffeescript

    functionExpression: -> return "this value"

```

But in CoffeeScript the fact that functions return values is always implied

    functionExpression: -> "this value"

Obviously, functions can accept arguments but we need to use a variable...

    functionWithArguments = (a, b) -> a

...so we may call the method elsewhere

    functionWithArguments 5, 6

# Statements

Statement: A line of code which does something. Example: GOTO 100

Statements do not return values

    variableStatement = "Some value"

But we can make it point to a dynamically returned value

    functionVariable = -> "this is also cool"


