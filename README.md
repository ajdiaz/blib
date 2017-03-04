# blib: Bash basic library

The blib library is a basic library contains a lot of useful functions and
aliases for bash programing. The library is compiled in one file and it's
easy to source from any script. All functions are well documented and using
specific namespace convention to keep blib easy to use.

See the API Reference below for more information about utilities included in
standard blib versions.

## Namespacing

In blib functions are organized in modules. Because of bash does not support
namespaces natively, we need to use a convention to simulate them. In blib
all functions are named in the following form:

~~~~~~~~ {.bash}
module::function
~~~~~~~~

Where `module` is the module name where the functions belongs, and the
`function` is the function name. Blib is documented with bashdoc, using
bashdoc document strings.

## License

Blib is distributed under the terms of MIT License.

