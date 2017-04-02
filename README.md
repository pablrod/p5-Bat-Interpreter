# NAME

Bat::Interpreter - Pure perl interpreter for a small subset of bat/cmd files

# SYNOPSIS

```perl
#!/usr/bin/env perl -w

use 5.0101;
use Bat::Interpreter;

my $interpreter = Bat::Interpreter->new;

$interpreter->run('basic.cmd');

say join("\n", @{$interpreter->executor->commands_executed});
```

# DESCRIPTION

Pure perl interpreter for a small subset of bat/cmd files.

# METHODS

## run

Run the interpreter

# AUTHOR

Pablo Rodríguez González

# BUGS

Please report any bugs or feature requests via github: [https://github.com/pablrod/p5-Bat-Interpreter/issues](https://github.com/pablrod/p5-Bat-Interpreter/issues)

# LICENSE AND COPYRIGHT

Copyright 2016 Pablo Rodríguez González.

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
