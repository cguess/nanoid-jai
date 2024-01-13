A (so far quite naive) implementation of [NanoID](https://github.com/ai/nanoid) in the Jai programming language.

# Usage

NOTE: Before you generate NanoIDs with this library, you must initialize your random seed. We provide
a helpful utility function for this:
```
nanoid_initialize_random();
```
... but obviously, if you do this elsewhere in your program, it is not necessary.

To generate an ID, simply call:
```
myid := nanoid_generate();
```

You can optionally pass alphabet and size parameters to control the alphabet and size.

