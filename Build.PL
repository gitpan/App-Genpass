
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'List::MoreUtils' => '0',
    'Module::Build' => '0.3601',
    'Test::Deep' => '0',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Quickly and easily create secure passwords',
  'dist_author' => [
    'Sawyer X <xsawyerx@cpan.org>'
  ],
  'dist_name' => 'App-Genpass',
  'dist_version' => '2.01',
  'license' => 'perl',
  'module_name' => 'App::Genpass',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Carp' => '0',
    'Config::Any' => '0',
    'File::HomeDir' => '0',
    'List::AllUtils' => '0',
    'Mouse' => '0',
    'MouseX::ConfigFromFile' => '0',
    'MouseX::Getopt' => '0',
    'Path::Class' => '0',
    'namespace::autoclean' => '0',
    'namespace::clean' => '0.2'
  },
  'script_files' => [
    'bin/genpass'
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
