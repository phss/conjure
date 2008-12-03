task :tasks do
  Dir.entries("#{ENV['CONJURE_HOME']}/library").each do |file_name|
    next if file_name[0].chr == '.'
    puts file_name.sub('.cj', '')
  end
end