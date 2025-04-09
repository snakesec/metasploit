bundle install

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Bundle install... PASS!"
else
  # houston we have a problem
  exit 1
fi

bundle update --bundler

rm -rf /opt/ANDRAX/metasploit-framework

rm -rf .git*

cp -Rf $(pwd) /opt/ANDRAX/metasploit-framework

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
