# TaX — the Tiny arXiv TeX         

TaX is a TeX distribution for macOS,
following the minimalism of the excellent [TinyTex](https://github.com/yihui/tinytex).

It focuses on two main points:

1. TaX installs the texlive distribution currently in use by arXiv.
This guaranties that if your `.tex` files compile with TaX, they
should compile without problems on the arXiv servers.

2. TaX never assumes you can type a password.
It can thus be installed on guest sessions of computers you do not own.

## How can I get TaX?
### Step 1: install TaX
Open a terminal and run

```
curl -sL https://raw.githubusercontent.com/dlejay/tax/trunk/install-macos.sh | sh
```

This will install TaX in `~/Library/TaX`.

### Step 2: update your `$PATH`
If you are using a brand new macOS,
this can be done with:

```
echo '
# Add the Tiny arXiv TeX binaries to the PATH
export PATH=$PATH:$HOME/Library/TaX/bin/x86_64-darwin' >> $HOME/.zprofile
source $HOME/.zprofile
```

## I don't want TaX anymore
Simply remove the TaX folder
```
rm -rf ~/Library/TaX
```
and clean your `PATH`.
