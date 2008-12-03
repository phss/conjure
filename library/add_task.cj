task :add_task do
  task_name = ENV['param']
  path_to_task_file = "#{ENV['CONJURE_HOME']}/library/#{task_name}.cj"
  
  File.open(path_to_task_file, "w") { |f| f.write("task :#{task_name} do\n\nend") } unless File.exists?(path_to_task_file)
  sh "conjure edit_task #{task_name}"
end