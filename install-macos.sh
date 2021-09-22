cd $TMPDIR

rm -rf TaX

curl -sLO https://raw.githubusercontent.com/dlejay/tax/trunk/tax.profile
curl -sL https://raw.githubusercontent.com/dlejay/tax/trunk/install-base.sh | sh

rm tax.profile

cd TaX/bin/*
curl -sLO https://raw.githubusercontent.com/dlejay/tax/trunk/packages.txt
./tlmgr install $(cat packages.txt | tr '\n' ' ')

rm packages.txt
rm -rf $HOME/Library/"Application Support"/TaX
mv ../../../TaX $HOME/Library/"Application Support"
