Puppet Module - Java for OS X
=============================

This Puppet module installs Java for OS X (2013-005).

Supported Platforms:

- Darwin

Usage
-----

Install Java for OS X (2013-005) by default:

```
class {'java': }
```

Install a specific version:

```
class {'java':
  version => '2013-004'
}
```

Notes
-----
* The support file for Java for OS X 2013-005 has been incorrectly named 
'JavaForOSX2013-05.dmg' on the Apple servers. If you need to specify the version 
of '2013-005' use '2013-05' instead to correctly download the dmg.


MIT License
-----------

Copyright 2013 Ryan Skoblenick

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.