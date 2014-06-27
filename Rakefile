require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

desc "Check all external links"
task :check_links do
  require 'link_checker'
  LinkChecker.new(:target => 'output').check_uris
end