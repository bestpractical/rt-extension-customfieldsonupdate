use inc::Module::Install;

RTx         'RT-Extension-CustomFieldsOnUpdate';
all_from    'lib/RT/Extension/CustomFieldsOnUpdate.pm';
readme_from 'lib/RT/Extension/CustomFieldsOnUpdate.pm';

requires_rt('4.0.0');

WriteAll();
