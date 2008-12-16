BROWSER_PATH ="open /Applications/Firefox.app"

def open_browser_for(link)
  "#{BROWSER_PATH} #{link}"
end

ACTIONS = {
  "github" => open_browser_for("http://www.github.com"),
  "gmail" => open_browser_for("http://www.gmail.com")
}

task :goto do
  target = ENV['param']
  raise "No action for target #{target}!" unless ACTIONS.key? target
  
  sh "#{ACTIONS[target]}"
end