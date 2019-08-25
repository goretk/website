---
title: "Libgore"
date: 2019-07-14
draft: false
---
# Open up GoRE to other languages

*Libgore* is a dynamic C-library for interacting with [GoRE](/gore). It is
using **cgo** to produce a translation layer between the code written in Go and
the exported C functions. With this library, it is possible to write bindings
for other languages that have C foreign function interface (FFI) support.
[PyGoRE](/pygore) uses this dynamic library to provide a Python library that
can be used to write tools in Python.

## Example

```c
#include <stdio.h>
#include "libgore.h"

int main()
{
   int v;
   char* fp = "/path/to/test/file";
   v = gore_open(fp);
   struct compilerVersion* c = gore_getCompilerVersion(fp);
   printf("Compiler version: %s\n", c->name);
   gore_close(fp);
   return 0;
}
```
