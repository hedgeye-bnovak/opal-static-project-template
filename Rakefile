require 'opal'
require 'opal/browser'

desc 'Build our app to build.js'
task :build do
  Opal::Processor.source_map_enabled = false
  env = Opal::Environment.new
  env.append_path 'opal'

  File.open('build.js', 'w+') do |out|
    out << env['application'].to_s
  end
end
