#==========================================================================
#              Copyright (c) 1995-1999 Martien Verbruggen
#--------------------------------------------------------------------------
#
#	Name:
#		GD::Graph::utils.pm
#
#	Description:
#		Package of general utilities.
#
# $Id: utils.pm,v 1.3 2000/02/13 12:35:49 mgjv Exp $
#
#==========================================================================
 
package GD::Graph::utils;

use strict;

use vars qw( @EXPORT_OK %EXPORT_TAGS );
require Exporter;

@GD::Graph::utils::ISA = qw( Exporter );
 
@EXPORT_OK = qw( _max _min _round );
%EXPORT_TAGS = ( all => [qw(_max _min _round)],);

$GD::Graph::utils::prog_name    = 'GD::Graph::utils.pm';
$GD::Graph::utils::prog_rcs_rev = '$Revision: 1.3 $';
$GD::Graph::utils::prog_version = 
	($GD::Graph::utils::prog_rcs_rev =~ /\s+(\d*\.\d*)/) ? $1 : "0.0";

sub _max { 
	my ($a, $b) = @_; 
	return undef	if (!defined($a) and !defined($b));
	return $a 		if (!defined($b));
	return $b 		if (!defined($a));
	( $a >= $b ) ? $a : $b; 
}

sub _min { 
	my ($a, $b) = @_; 
	return undef	if (!defined($a) and !defined($b));
	return $a 		if (!defined($b));
	return $b 		if (!defined($a));
	( $a <= $b ) ? $a : $b; 
}

sub _round { 
	sprintf "%.0f", shift;
}

sub version {
	$GD::Graph::utils::prog_version;
}

$GD::Graph::utils::prog_name;

