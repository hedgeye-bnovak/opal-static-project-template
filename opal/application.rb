require 'opal'
require 'browser'
require 'browser/dom'
require 'template'
require 'views/page'

puts 'Wow, running Ruby again!'

$document.on 'dom:load' do
  $document['my_hook'].inner_html = '<h1>Hello</h1>'
end
