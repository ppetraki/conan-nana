[conan-io](https://conan.io/) recipe for [nana](http://nanapro.org/) gui library
====

Provides version 1.7.0 in both Debug and Release builds.

Tested on Ubuntu 18.04. Contributions to other platforms and earlier
versions are very welcome.

Usage
----
#### Install nana conan package locally
Unconditionally removes the existing installed version and then builds and installs both Release and Debug builds.

    make package-install

and of course there's an uninstall

    make package-uninstall

License
----
[MIT](https://choosealicense.com/licenses/mit/)

Notes
----
The Makefile used to drive conan package development was inspired by this [bincrafters blog post](https://bincrafters.github.io/2017/11/10/Updated-Conan-Package-Flow/).

Markdown file edited using [ReText](https://github.com/retext-project/retext), which offers editing + live preview.

TODO
----
 - test_package functionality
 - Travis CI
 - Shared lib support
 - Plumbing all the available build options
 - Multiversion ubuntu support, plus RHEL/Fedora, & Suse
 - Mac and Windows support
 - Handle dependancy resolution like boost_filesystem when stdc++fs isn't available
