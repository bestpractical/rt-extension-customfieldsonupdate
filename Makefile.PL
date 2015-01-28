use inc::Module::Install;

RTx         'RT-Extension-CustomFieldsOnUpdate';

repository('https://github.com/bestpractical/rt-extension-customfieldsonupdate');

requires_rt('4.0.3');
rt_too_new('4.4.0');

sign();
WriteAll();
