use 5.008003;
use strict;
use warnings;

package RT::Extension::CustomFieldsOnUpdate;

our $VERSION = '0.01';

=head1 NAME

RT::Extension::CustomFieldsOnUpdate - edit ticket's custom fields on reply/comment

=head1 DESCRIPTION

This extension adds often requested feature - update of ticket's custom fields on
reply and comment.

This is for RT 4.0.x, solutions for older versions available on the wiki,
start from CustomFieldsOnUpdate page [1].

[1] http://requesttracker.wikia.com/wiki/CustomFieldsOnUpdate

=head1 INSTALLATION

It's sad but RT 4.0.0 - 4.0.2 miss a tiny feature, so you have to apply
F<patches/RT-4.0.0-2-edit-ticket-custom-fields-in-table.patch>. This change
is part of RT 4.0.3.

Otherwise installation is common:

    perl Makefile.PL
    make
    make install

Register 'RT::Extension::CustomFieldsOnUpdate' in the site config;

    Set(@Plugins, qw(
        RT::Extension::CustomFieldsOnUpdate
        ... other plugins you may have ...
    ));

=cut

=head1 AUTHOR

Ruslan Zakirov E<lt>ruz@bestpractical.comE<gt>

=head1 LICENSE

Under the same terms as perl itself.

=cut

1;
