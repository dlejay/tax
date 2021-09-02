TLREPO=https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2020/tlnet-final

curl -LO $TLREPO/install-tl-unx.tar.gz
tar -xzf install-tl-unx.tar.gz && rm install-tl-unx.tar.gz

mkdir tax
cd tax
TEXLIVE_INSTALL_ENV_NOCHECK=true TEXLIVE_INSTALL_NO_WELCOME=true ../install-tl-*/install-tl -profile=../tax.profile -repository=$TLREPO

rm install-tl.log

cd bin/*

./tlmgr install latex-bin
