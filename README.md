# MySQL Puppet Module

# Install using composer

This module can be installed using composer. You will need to define the
repository and require this module. For more information on using composer
to install puppet modules see [github.com/JoshuaEstes/ComposerInstallerPuppet](https://github.com/JoshuaEstes/ComposerInstallerPuppet).

    ...
    "repositories": [
        ...
        {
            "type": "git",
            "url": "git://github.com/JoshuaEstes/puppet-mysql.git"
        }
    ],
    "require": {
        ...
        "joshuaestes/puppet-php": "*"
    },
    "extra": {
        ...
        "puppet": {
            "modules_path": "app/Resources/puppet/modules"
        }
    },
    ...

# Basic Usage

    class { 'mysql': }

# License

Copyright (C) 2013 Joshua Estes

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
