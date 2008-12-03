DEFAULT_EDITOR = "mate"

task :edit_task do
  editor = ENV.include?("editor") ? ENV["editor"] : DEFAULT_EDITOR
  task_name = ENV['param']
  path_to_task_file = "#{ENV['CONJURE_HOME']}/library/#{task_name}.cj"

  raise "Task file '#{path_to_task_file}' do not exist!" unless File.exists?(path_to_task_file)
  sh "#{editor} #{path_to_task_file}"
end