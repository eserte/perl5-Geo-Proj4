
use Alien::Base::Wrapper qw( WriteMakefile);

require 5.10.0;

my $VERSION = '1.12';

WriteMakefile
 ( NAME     => 'Geo::Proj4'
 , VERSION  => $VERSION
 , AUTHOR   => 'Mark Overmeer'
 , ABSTRACT => 'PROJ library for carthographic and geodesic projections'
 , LICENSE  => 'perl_5'

 , META_MERGE =>
      { 'meta-spec' => { version => 2 }
      , resources  =>
         { repository =>
             { type => 'git'
             , url  => 'https://github.com/markov2/perl5-Geo-Proj4.git'
             , web  => 'https://github.com/markov2/perl5-Geo-Proj4'
             }
         , homepage => 'http://perl.overmeer.net/CPAN/'
         , license  => [ 'http://dev.perl.org/licenses/' ]
         }
      }

 , alien_requires =>
      { 'Alien::Proj4' => 0
      }
 );

### used by oodist during production of this distribution
sub MY::postamble { <<'__POSTAMBLE' }

RAWDIR          = ../public_html/geo-proj4/raw
DISTDIR         = ../public_html/geo-proj4/source
__POSTAMBLE
