use 5.008003;
use strict;
use warnings;

package RT::Extension::CustomFieldsOnUpdate;

our $VERSION = '0.02';

=head1 NAME

RT::Extension::CustomFieldsOnUpdate - edit ticket's custom fields on reply/comment

=head1 DESCRIPTION

This extension adds often requested feature - update of ticket's custom fields on
reply and comment.

=head1 RT VERSION

This is for RT 4, solutions for older versions are available on the wiki linked from the CustomFieldsOnUpdate page.
http://requesttracker.wikia.com/wiki/CustomFieldsOnUpdate

=head1 INSTALLATION 

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

If you are using RT 4.2 or greater, add this line:

    Plugin('RT::Extension::CustomFieldsOnUpdate');

For RT 4.0, add this line:

    Set(@Plugins, qw(RT::Extension::CustomFieldsOnUpdate));

or add C<RT::Extension::CustomFieldsOnUpdate> to your existing C<@Plugins> line.

=item Patch your RT

If you are running RT 4.0.0 - 4.0.2 you need to apply
F<patches/RT-4.0.0-2-edit-ticket-custom-fields-in-table.patch>. This change
is part of RT 4.0.3 and later.

    patch -p1 < /path/to/RT-4.0.0-2-edit-ticket-custom-fields-in-table.patch

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 AUTHOR

Ruslan Zakirov <ruz@bestpractical.com>
Kevin Falcone <falcone@bestpractical.com>

=head1 BUGS

All bugs should be reported via email to
L<bug-RT-Extension-CustomFieldsOnUpdate@rt.cpan.org|mailto:bug-RT-Extension-CustomFieldsOnUpdate@rt.cpan.org>
or via the web at
L<rt.cpan.org|http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-CustomFieldsOnUpdate>.

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2014 by Best Practical Solutions

Under the same terms as perl itself.

=cut

1;
