require 'socket'
 
server  = 'irc.libera.chat'
port    = 6667
socket  = TCPSocket.open(server, port)
 
nickname = 'SkillcrushBotOMG'
channel = '#snowrocks'
quote = File.read('quote.txt')
 
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
socket.puts "PRIVMSG #{channel} :OMG You are not alone! Sono qui!!"

socket.puts 
 
while message = socket.gets do
 
 puts message
 
    if message.match('^PING :')
 
        server = message.split(':').last
        
        puts "PONG #{server}"
        
        socket.puts "PONG #{server}"
        
    elsif message.match('How are you')
        puts "PRIVMSG #{channel} : OMG I am doing great"
        socket.puts "PRIVMSG #{channel} : OMG I am doing great"
    end

    if message.match('Che cosa fai')
        socket.puts "PRIVMSG #{channel} : OMG Sto leggendo le notizie! Tutto e cattivo!"
    end

    if message.match ('quote')
        socket.puts "PRIVMSG #{channel} : #{quote}"
    end
end

# File.write('name.txt', socket.gets)
# Returns PONG mercury.libera.chat

# File.write('name.txt', "PRIVMSG #{channel}")
# Returns PRIVMSG #snowrocks

# File.write('name.txt', socket.gets "PRIVMSG #{channel}")
# fatal error didn't run script
