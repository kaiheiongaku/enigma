require './lib/enigma'

enigma = Enigma.new
handle = File.open(ARGV[0], "r")
incoming_text = handle.read

handle.close

encrypted_text = enigma.encrypt(incoming_text)

writer = File.open(ARGV[1], "w")
writer.write(encrypted_text)

writer.close

puts "Created #{ARGV[0]} with the key #{enigma.key} and date #{enigma.date}"
