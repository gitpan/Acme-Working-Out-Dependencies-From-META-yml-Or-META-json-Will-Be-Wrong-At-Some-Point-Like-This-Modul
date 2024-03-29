use ExtUtils::MakeMaker;
use strict;

my %possibles = (
  'AAAA::Crypt::DH', '0.04',
  'Algorithm::Diff', '1.1902',
  'Algorithm::Permute', '0.12',
  'Any::Moose', '0.14',
  'App::SnerpVortex', '1.000',
  'Async::MergePoint', '0.04',
  'B::Hooks::EndOfScope', '0.09',
  'B::Keywords', '1.10',
  'CPAN::Recent::Uploads', '0.02',
  'CPAN::Testers::Report', '1.999001',
  'CPANPLUS::Internals::Source::CPANIDX', '0.04',
  'Class::Accessor::Grouped', '0.10003',
  'Class::Method::Modifiers', '1.07',
  'Config::Perl::V', '0.12',
  'Data::PowerSet', '0.05',
  'DateTime::Event::Recurrence', '0.16',
  'DateTime::Format::Builder', '0.80',
  'DateTime::Format::Natural', '0.96',
  'DateTime::Format::Strptime', '1.5000',
  'DateTime::Locale', '0.45',
  'DateTime::TimeZone', '1.34',
  'Devel::Caller', '2.05',
  'Devel::GlobalDestruction', '0.03',
  'Devel::PatchPerl', '0.36',
  'Dist::Zilla::Plugin::ChangelogFromGit', '0.002',
  'Dist::Zilla::Plugin::MakeMaker::Awesome', '0.12',
  'Dist::Zilla::Plugin::ReadmeFromPod', '0.14',
  'Dist::Zilla::Plugin::ReportVersions', '1.110730',
  'Dist::Zilla::Util::Test::KENTNL', '0.01015821',
  'Email::Valid', '0.184',
  'Event', '1.17',
  'ExtUtils::CChecker', '0.07',
  'FCGI::Client', '0.06',
  'File::Find::Rule', '0.32',
  'File::HomeDir', '0.97',
  'File::Rsync', '0.43',
  'File::Slurp', '9999.18',
  'HTML::Form', '6.00',
  'HTML::Parser', '3.68',
  'HTML::TreeBuilder::LibXML', '0.12',
  'HTTP::Request::AsCGI', '1.2',
  'IP::Country', '2.27',
  'JSON', '2.53',
  'List::UtilsBy', '0.07',
  'Log::Dispatch', '2.29',
  'MRO::Compat', '0.11',
  'Module::Extract::Use', '1.01',
  'Module::Extract::VERSION', '1.01',
  'Module::ExtractUse', '0.23',
  'Module::Install::ExtraTests', '0.007',
  'Module::Install::GithubMeta', '0.10',
  'MooseX::Async', '0.07',
  'MooseX::Method::Signatures', '0.36',
  'MooseX::Object::Pluggable', '0.0011',
  'MooseX::Types::DateTime', '0.05',
  'MouseX::AttributeHelpers', '0.06',
  'MouseX::NativeTraits', '1.04',
  'Net::HTTP', '6.01',
  'Net::OAuth', '0.27',
  'Net::Twitter', '3.17001',
  'POE::Component::Client::SimpleFTP', '0.003',
  'POE::Component::Server::NNTP', '1.04',
  'POE::Filter::HTTP::Parser', '1.06',
  'POE::Filter::IRCD', '2.42',
  'POE::Loop::Event', '1.304',
  'Path::Class', '0.24',
  'Perl::PrereqScanner', '1.002',
  'Pod::Elemental::PerlMunger', '0.093330',
  'Pod::Eventual', '0.093330',
  'Probe::Perl', '0.01',
  'SQL::Translator', '0.11008',
  'Scope::Guard', '0.20',
  'Shell::Command', '0.06',
  'String::Format', '1.16',
  'String::RewritePrefix', '0.006',
  'Sys::SigAction', '0.11',
  'Test::Deep', '0.108',
  'Test::Most', '0.23',
  'Test::POE::Server::TCP', '1.14',
  'Test::Pod::Coverage', '1.08',
  'Test::Spelling', '0.14',
  'Test::SubCalls', '1.09',
  'URI::FromHash', '0.03',
  'WWW::UsePerl::Journal', '0.23',
  'WWW::UsePerl::Journal::Thread', '0.12',
  'XML::Atom', '0.38',
  'XML::RSS', '1.49',
  'namespace::clean', '0.20',
);

my $count = scalar keys %possibles;

my $prereqs_pm = { };

$prereqs_pm->{$_} = $possibles{$_}
  for map { ( keys %possibles )[ int rand $count-1 ] } (0 .. 10);

WriteMakefile (
  NAME => 'Acme::Working::Out::Dependencies::From::META::yml::Or::META::json::Will::Be::Wrong::At::Some::Point::Like::This::Module::For::Instance',
  VERSION_FROM => 'lib/Acme/Working/Out/Dependencies/From/META/yml/Or/META/json/Will/Be/Wrong/At/Some/Point/Like/This/Module/For/Instance.pm',
  PREREQ_PM => $prereqs_pm,
  AUTHOR => 'Chris Williams <chris@bingosnet.co.uk>',
	ABSTRACT => 'Because there is nothing like being right'
);
