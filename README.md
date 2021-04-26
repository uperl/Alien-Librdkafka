# Alien::Librdkafka ![linux](https://github.com/uperl/Alien-Librdkafka/workflows/linux/badge.svg) ![macos](https://github.com/uperl/Alien-Librdkafka/workflows/macos/badge.svg)

build and install librdkafka

# SYNOPSIS

In your Makefile.PL:

```perl
use ExtUtils::MakeMaker;
use Alien::Base::Wrapper ();

WriteMakefile(
  Alien::Base::Wrapper->new('Alien::Librdkafka')->mm_args2(
    # MakeMaker args
    NAME => 'My::XS',
    ...
  ),
);
```

In your Build.PL:

```perl
use Module::Build;
use Alien::Base::Wrapper qw( Alien::Librdkafka !export );

my $builder = Module::Build->new(
  ...
  configure_requires => {
    'Alien::Librdkafka' => '0',
    ...
  },
  Alien::Base::Wrapper->mb_args,
  ...
);

$build->create_build_script;
```

# DESCRIPTION

This distribution provides librdkafka so that it can be used by other
Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of librdkafka on your system.  If found it
will use that.  If it cannot be found, the source code will be downloaded
from the internet and it will be installed in a private share location
for the use of other modules.

# SEE ALSO

[Alien](https://metacpan.org/pod/Alien), [Alien::Base](https://metacpan.org/pod/Alien::Base), [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien::Build::Manual::AlienUser)

# AUTHOR

Original author: Pavel Shaydo

Current maintainer: Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016, 2017, 2018 by Pavel Shaydo.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
