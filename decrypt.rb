require './lib/enigma'

enigma = Enigma.new
handle = File.open(ARGV[0], "r")
incoming_text = handle.read

handle.close

decrypted_text = enigma.decrypt(incoming_text, ARGV[2].to_s, ARGV[3].to_s)

writer = File.open(ARGV[1], "w")
writer.write(decrypted_text)

writer.close

puts "Created #{ARGV[0]} with the key #{ARGV[2]} and date #{ARGV[3]}"
