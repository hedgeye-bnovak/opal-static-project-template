require 'sinatra'
require 'opal'

map '/assets' do
  env = Opal::Environment.new
  env.append_path 'opal'
  run env
end

get '/' do
  <<-HTML
    <!doctype html>
    <html>
      <head>
        <script src="/assets/application.js"></script>
      </head>
    </html>
  HTML
end

run Sinatra::Application

