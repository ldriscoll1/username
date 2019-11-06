#! /bin/bash
# username.sh
# Luke Driscoll
echo "Enter a 3-12 character username with only lower case letters, digits and underscores"
read USERNAME
while echo "$USERNAME" | egrep -v "([a-z])([a-z 0-9]){3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - starts with lowercase and is in lowercase, digits and lowercase only!"
	echo "Enter a valid username: "
	read USERNAME
done
echo "Thank you"
