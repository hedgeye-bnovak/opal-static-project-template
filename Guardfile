# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'process', :name => 'OpalChanged', :command => 'rake build' do
  watch(%r{^opal/.+})
  watch('index.html')
  watch('Rakefile')
end
