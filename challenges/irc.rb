require 'socket'
 
server  = 'irc.libera.chat'
port    = 6667
socket  = TCPSocket.open(server, port)
 
nickname = 'SkillcrushBotOMG'
channel = '#snowrocks'
 
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
socket.puts "PRIVMSG #{channel} :OMG You are not alone! Sono qui!!"
 
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
end