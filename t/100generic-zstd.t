BEGIN {
    if ($ENV{PERL_CORE}) {
	chdir 't' if -d 't';
	@INC = ("../lib", "lib/compress");
    }
}

use lib qw(t t/compress);
use strict;
use warnings;

use IO::Compress::Zstd     qw($ZstdError) ;
use IO::Uncompress::UnZstd qw($UnZstdError) ;

sub identify
{
    return 'IO::Compress::Zstd';
}

require "generic.pl" ;
run();
