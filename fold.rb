def wrap(s, width=78)
  s.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
end

embed = false
$stdin.each_line do |line|
  embed = !embed if /^\+\+\+\+$/.match? line
  line = wrap(line, 72) if embed
  puts line
end
