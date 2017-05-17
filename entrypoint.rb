puts JRUBY_VERSION
puts RUBY_VERSION

require 'liquid'
require 'pp'
pp Liquid::Continue

#p Dir["/private/tmp/jruby-gradle-plugin/examples/self-executing-jar!uri:classloader:/gems/liquid-4.0.0/lib"].to_a
#p Dir["/private/tmp/jruby-gradle-plugin/examples/self-executing-jar/uri:classloader:/gems/liquid-4.0.0/lib"].to_a
#p Dir["uri:classloader:/gems/liquid-4.0.0/lib"].to_a
