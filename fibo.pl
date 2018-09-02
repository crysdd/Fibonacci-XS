#!/usr/bin/env perl
use utf8;
use v5.18;
use strict;
use warnings;
use open      qw( :std :utf8 );

use lib 'Fibo/blib/lib';
use lib 'Fibo/blib/arch';
use Fibo;

my %arg = @ARGV;
if( $arg{'-c'} ){
	if( $arg{'-f'} eq 'perl' ){
		say fibonacci( $arg{'-c'} );
	}
	elsif( $arg{'-f'} eq 'xs' ){
		say Fibo::fibo( $arg{'-c'} );
	}
}

sub fibonacci {
	my $n = shift;
	if ($n < 2){
		return 1;
	}else{
		return fibonacci($n - 2) + fibonacci($n - 1);
	}
}
