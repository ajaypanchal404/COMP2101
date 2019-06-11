#!/bin/bash

# this script puts some picture files into a Pictures directory in our home directory
# it only runs commands if they need to be run and only shows necessary output
# it summarizes the Pictures directory when it is done


# Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
#   - use the same kind of testing to make sure commands work and delete the local copy of the tarfile when you are done with it

test -d ~/Pictures || mkdir ~/Pictures

test -f ~/Pictures/pics.zip || wget -q -O ~/Pictures/pics.zip http://zonzorp.net/pics.zip

test -f ~/Pictures/pics.zip && unzip -d ~/Pictures -o -q ~/Pictures/pics.zip && rm ~/Pictures/pics.zip

test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF

echo "----------------------------------------------------------------------------------------------"
echo "now geting and unzip the tgz file"

test -d ~/Pictures || mkdir ~/Pictures

test -f ~/Pictures/pics.tgz || wget -q -O ~/Pictures/pics.tgz https://zonzorp.net/pics.tgz

test -f ~/Pictures/pics.tgz && tar --extract --file ~/Pictures/pics.tgz -C ~/Pictures && rm ~/Pictures/pics.tgz

test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF

exit
