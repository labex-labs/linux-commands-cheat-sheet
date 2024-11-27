# Perform Package Search and Information Lookup with aptitude

In this step, we will learn how to use the aptitude package manager to search for packages and retrieve information about them.

First, let's search for a package using the `aptitude search` command. For example, let's search for the "nginx" package:

```bash
sudo aptitude search nginx
```

Example output:

```
i   nginx                                                        - high performance web server
p   nginx-core                                                   - nginx web server (core version)
p   nginx-doc                                                    - documentation for nginx
p   nginx-extras                                                 - nginx web server (extended version)
p   nginx-full                                                   - nginx web server (standard version)
p   nginx-light                                                  - nginx web server (basic version)
```

The output shows that there are several nginx-related packages available. The "i" prefix indicates that the "nginx" package is currently installed.

Next, let's get detailed information about the "nginx" package using the `aptitude show` command:

```bash
sudo aptitude show nginx
```

Example output:

```
Package: nginx
State: installed
Automatically installed: no
Version: 1.18.0-0ubuntu1.2
Priority: optional
Section: web
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Architecture: amd64
Uncompressed Size: 1,518 k
Depends: nginx-core (= 1.18.0-0ubuntu1.2), lsb-base (>= 3.0-10)
Suggests: nginx-doc, www-browser
Description: high performance web server
 Nginx is a high performance web server and reverse proxy server. It is
 known for its high performance, stability, rich feature set, simple
 configuration, and low resource consumption.
```

This provides detailed information about the "nginx" package, including its version, dependencies, and a description of the package.
