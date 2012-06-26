
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Quickly and easily create secure passwords",
  "AUTHOR" => "Sawyer X <xsawyerx\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "List::MoreUtils" => 0,
    "Module::Build" => "0.3601",
    "Test::Deep" => 0,
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "App-Genpass",
  "EXE_FILES" => [
    "bin/genpass"
  ],
  "LICENSE" => "perl",
  "NAME" => "App::Genpass",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Config::Any" => 0,
    "File::HomeDir" => 0,
    "File::Spec" => 0,
    "Getopt::Long" => 0,
    "List::AllUtils" => 0,
    "Moo" => 0,
    "MooX::Types::MooseLike::Base" => 0,
    "namespace::clean" => "0.2",
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "2.31",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



