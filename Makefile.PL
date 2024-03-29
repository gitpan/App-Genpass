
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.015.
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Quickly and easily create secure passwords",
  "AUTHOR" => "Sawyer X <xsawyerx\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Module::Build" => "0.3601"
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
    "MooX::Types::MooseLike" => 0,
    "Sub::Quote" => 0,
    "namespace::clean" => "0.2",
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "List::MoreUtils" => 0,
    "Test::Deep" => 0,
    "Test::More" => 0
  },
  "VERSION" => "2.34",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Config::Any" => 0,
  "File::HomeDir" => 0,
  "File::Spec" => 0,
  "Getopt::Long" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "List::AllUtils" => 0,
  "List::MoreUtils" => 0,
  "Module::Build" => "0.3601",
  "Moo" => 0,
  "MooX::Types::MooseLike" => 0,
  "Sub::Quote" => 0,
  "Test::Deep" => 0,
  "Test::More" => 0,
  "namespace::clean" => "0.2",
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



