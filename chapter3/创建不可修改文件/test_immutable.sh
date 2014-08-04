echo 'new a test_file'
sudo touch test_file
ls -al
echo 'set ht immutable by use chattr +i'
sudo chattr +i test_file
rm test_file
echo remove the immutable by use -i
chattr -i test_file
rm test_file
ls -al
