File.open("/etc/hosts") do |f|
  puts f.read
end
