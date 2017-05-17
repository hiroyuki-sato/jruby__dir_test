puts JRUBY_VERSION
puts RUBY_VERSION

p Dir.exist?("uri:classloader:/gems/liquid-4.0.0/lib")
p Dir.exist?("/private/tmp/jruby__dir_test/build/libs/jruby__dir_test-jruby.jar!uri:classloader:/gems/liquid-4.0.0/lib")
p Dir.exist?("/private/tmp/jruby__dir_test/build/libs/jruby__dir_test-jruby.jar!/gems/liquid-4.0.0/lib")
p Dir.exist?("/private/tmp/jruby__dir_test/uri:classloader:/gems/liquid-4.0.0/lib")

require 'liquid'
require 'pp'
pp Liquid::Continue

#p Dir["/private/tmp/jruby-gradle-plugin/examples/self-executing-jar!uri:classloader:/gems/liquid-4.0.0/lib"].to_a
#p Dir["/private/tmp/jruby-gradle-plugin/examples/self-executing-jar/uri:classloader:/gems/liquid-4.0.0/lib"].to_a
#p Dir["uri:classloader:/gems/liquid-4.0.0/lib"].to_a
