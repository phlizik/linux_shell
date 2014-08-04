# set the file authority
chmod u=rwx g=rw o=r test_file
ll
chmod o+x test_file
ll
chmod a+x test_file
ll
chmod a-x test_file
ll
# use chown to change file's own
# eg: chown slynux.slynux test.sh

