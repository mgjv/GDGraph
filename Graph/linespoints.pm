#==========================================================================
#			   Copyright (c) 1995-1998 Martien Verbruggen
#--------------------------------------------------------------------------
#
#	Name:
#		GD::Graph::linespoints.pm
#
# $Id: linespoints.pm,v 1.4 2000/02/13 12:35:49 mgjv Exp $
#
#==========================================================================

package GD::Graph::linespoints;
 
use strict;
 
use GD::Graph::axestype;
use GD::Graph::lines;
use GD::Graph::points;
 
# Even though multiple inheritance is not really a good idea,
# since lines and points have the same parent class, I will do it here,
# because I need the functionality of the markers and the line types

@GD::Graph::linespoints::ISA = qw(GD::Graph::lines GD::Graph::points);

# PRIVATE

sub draw_data_set
{
	my $self = shift;

	$self->GD::Graph::points::draw_data_set(@_) or return;
	$self->GD::Graph::lines::draw_data_set(@_);
}

sub draw_legend_marker
{
	my $self = shift;

	$self->GD::Graph::points::draw_legend_marker(@_);
	$self->GD::Graph::lines::draw_legend_marker(@_);
}

1;
