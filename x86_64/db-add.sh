#!/bin/bash

rm payraos-repo*

echo "repo-add"
repo-add -n -R payraos-repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm payraos-repo.db
# rm payraos-repo.db.sig

rm payraos-repo.files
# rm payraos-repo.files.sig

mv payraos-repo.db.tar.gz payraos-repo.db
# mv payraos-repo.db.tar.gz.sig payraos-repo.db.sig

mv payraos-repo.files.tar.gz payraos-repo.files
# mv payraos-repo.files.tar.gz.sig payraos-repo.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
