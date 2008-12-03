task :tasks do
  puts "You can conjure the following tasks:"
  Dir.entries("#{ENV['CONJURE_HOME']}/library").each do |file_name|
    next if file_name[0].chr == '.'
    puts "- " + file_name.sub('.cj', '')
  end
end