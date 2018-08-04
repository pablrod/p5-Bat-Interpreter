# NAME

Bat::Interpreter - Pure perl interpreter for a small subset of bat/cmd files

# VERSION

version 0.012

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

# BUGS

Please report any bugs or feature requests via github: [https://github.com/pablrod/p5-Bat-Interpreter/issues](https://github.com/pablrod/p5-Bat-Interpreter/issues)

# AUTHOR

Pablo Rodríguez González <pablo.rodriguez.gonzalez@gmail.com>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018 by Pablo Rodríguez González.

This is free software, licensed under:

```
The MIT (X11) License
```

# CONTRIBUTORS

- eva.dominguez <eva.dominguez@meteologica.com>
- Eva Dominguez <meloncego@gmail.com>
- pablo.rodriguez <pablo.rodriguez@meteologica.com>
- ricardo.gomez <ricardogomezescalante@gmail.com>
- Toby Inkster <tobyink@cpan.org>
