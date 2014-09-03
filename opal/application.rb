require 'opal'
require 'browser'
require 'browser/dom'
require 'template'
require 'views/user'

puts 'Wow, running Ruby!'

class User < Struct.new(:name, :age)
end

template = Template['views/user']
user = User.new('Ford Prefect')
user.age = 47

# Have to wait for DOM to load before loading the calculated templates:
$document.on 'dom:load' do
  $document['my_hook'].inner_html = template.render(user)
end
