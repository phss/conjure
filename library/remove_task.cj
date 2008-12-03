task :remove_task do
  task_name = ENV['param']
  path_to_task_file = "#{ENV['CONJURE_HOME']}/library/#{task_name}.cj"
  FileUtils.rm(path_to_task_file) if File.exists?(path_to_task_file)
end