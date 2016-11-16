// this program for "when people say "hi" or something, LED will lighting up"

# encoding: utf-8
require 'socket'
require 'nokogiri'

host = "localhost"
port = 10500

sock = TCPSocket.open(host,port)

source = ""

while true
  ret = IO::select([sock])
    source += sock.recv(65535)
    if source[-2..source.size] == ".¥n"
      source.gsub!(/¥.¥n/,"")
      xml = Nokogiri(source)
      words = (xml/"RECOGOUT"/"SHYPO"/"WHYPO").inject("") {|ws,w| ws + w["WORD"]}
      if words == "Hi"
        puts "blink led"
        io = open("sys/class/gpio/export","w")
        io.write(17)
        io.close

      dir = open("/sys/class/gpio/gpio17/direction","w")
      dir.write("out")
      dir.close

      out = 1
      20.times do
        val = open("/sys/class/gpio/gpio17/value","w")
        val.write(out)
        val.close
        out = out == 1? 0:1
        sleep 0.5
      end
      
      unexport = open("/sys/class/gpio/unexport","w")
      unexport.write(17)
      unexport.close
      end
    end
    source = ""
  end

end

end
