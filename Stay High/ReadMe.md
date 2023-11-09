# Stay High



### ssh_login credit
username - Ross_Ulbricht
password - RedOctober17



## Moto: We are F.B.I we got complaint about website selling drugs. We are hiring you to attak that websever to find the in's and out's of that group...Our Team is able to find the IP's of that server...Agent 37 will give the IP address as soon you start the VM-Machine...


## Questions:
1. What is the flag for the User == User.txt

2. What is the flag for the Root == Root.txt



## IDEA of the Stay-High


1. Mutiple Rabbit Holes
	1.2. Have mutiple Services
		(ex. SSH, SMB, ...etc)

2. FTP Service must have anonymous login enabled
	
	2.1 Store an Password-List - for ssh login -
		2.1.1 Must have random strings contained but one perfect password...(All Passwords must be in Base64 Encoding)

3. Must have a webserver running ~ apache2 ~
	3.1 Must be give hint to username for the ssh server -- login ...
		3.2 Hydra ssh brute force

4. After Login ssh, you should login to Ross_Ulbricht user with no sudoers, except a python file with root perms...

5. PrivEsc
	5.1 Privilege Escaltion with Python 3 using base64--File Vuln file permission method.
		https://www.hackingarticles.in/linux-privilege-escalation-python-library-hijacking/
		https://gtfobins.github.io/gtfobins/python/#suid

