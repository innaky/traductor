# Traductor

## Usage

```bash
cat /home/innaky/inspiration
this repository
is inpired
by @librenauta :) thanks!
```

```lisp
CL-USER> (traductor:file-trad "/home/innaky/inspiration" "/home/innaky/inspiration-out")
```

```bash
cat /home/innaky/inspiration-out
-//¯/¯-¯//-/¯¯-//-//¯//¯¯-///--//-//-/-/¯¯-//¯-////¯///
/-/¯¯-//-/-/¯¯¯//-////-/-/¯¯//¯//¯¯-/¯/¯
//¯/// _///-/¯¯//¯//¯//¯¯-¯//-///////¯-//¯///-//¯/¯-¯////¯//-/--/-//-
```

## Installation

You have need installed quicklisp

From the shell copy this repository in ~/quicklisp/local-projects

```bash
cd ~/quicklisp/local-projects
git clone https://github.com/innaky/traductor.git
```

And now load from slime:

```lisp
CL-USER> (ql:quickload "traductor")
```

## Inspiration
A conversation with @librenauta, thanks :)

The idiom is original of @librenauta, I'm only build an application in my favorite language Common Lisp.

## Author

* Innaky (innaky@protonmail.com)

## Copyright

Copyright (c) 2020 Innaky (innaky@protonmail.com)
