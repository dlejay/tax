# TaX — the Tiny arXiv TeX         
  
TaX is a TeX distribution for macOS,
following the minimalism of the excellent [TinyTex](https://github.com/yihui/tinytex).

It focuses on a few main points:

1. TaX installs the texlive distribution currently in use by arXiv.
This guaranties that if your `.tex` files compile with TaX, they
should compile without problems on the arXiv servers.

2. TaX never assumes you can type a password.
It can thus be installed on guest sessions of computers you do not own.

3. Allow easy installation of extra packages with `texliveonfly`.

## How can I get TaX?
### Step 1: install TaX
Open a (Rosetta) Terminal and run

```
curl -sL https://raw.githubusercontent.com/dlejay/tax/trunk/install-macos.sh | sh
```

This will install TaX in `~/Library/TaX`.

### Step 2: update your `$PATH`
If you are using `zsh` as your default shell,
this can be done with:

```                                 
echo '                              
# Add the Tiny arXiv TeX binaries to the PATH
export PATH=$PATH:$HOME/Library/"Application Support"/TaX/bin/x86_64-darwin' >> ${ZDOTDIR:-$HOME}/.zprofile
source ${ZDOTDIR:-$HOME}/.zprofile              
```                                 
                                    
## What if there is not enough in TaX?
If some packages are missing, you can either:
                                    
* Use `texliveonfly` as follows:                                                         
	```
	texliveonly proof-of-reimann-hypothesis.tex
	```
	and relax.
                                                                                                 
* Or, if `texliveonfly` fails, use `tlmgr` to search for the name of the missing
package as in the example:
	```
	tlmgr search --global --file putr8a.pfb
	```
	and install the missing package as in:
	```
	tlmgr install utopia
	```
## What if I don't want TaX anymore?
Simply remove the TaX folder
```
rm -rf ~/Library/TaX
```
and clean your `PATH`.
