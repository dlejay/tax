DL=https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2020/tlnet-final

curl -LO $DL/install-tl-unx.tar.gz
tar -xzf install-tl-unx.tar.gz && rm install-tl-unx.tar.gz

mkdir TaX
cd TaX

TEXLIVE_INSTALL_ENV_NOCHECK=true
TEXLIVE_INSTALL_NO_WELCOME=true
../install-tl-*/install-tl -profile=../tax.profile -repository=$DL

rm -r ../install-tl-*
rm install-tl.log install-tl bin/*/man

cd bin/*

./tlmgr install latex-bin
