# Traductor

## Usage

```bash
./trd "Hello!, how are you?"
/¯¯-/ _/// _//-///¯-¯/-//-/////¯//¯¯-//-/////¯
```

## Installation

This source run in Chicken 5.

### Logic steps

This tutorial is for GNU/Linux

* Download source code of chicken.
* Uncompress and execute the make file
* Install
* Install format egg
* compile trd

### Practice steps

```bash
wget https://code.call-cc.org/releases/5.2.0/chicken-5.2.0.tar.gz
tar xzvf chicken-5.2.0.tar.gz
cd chicken-5.2.0
sudo make PLATFORM=linux
sudo make PLATFORM=linux install
chicken-install format
cd
git clone https://github.com/innaky/traductor.git
cd traductor/scm/
csc -o trd trd.scm
./trd "hello world"
/¯-¯//¯¯-/ _/// _//-//--////¯// _///¯/¯
```
