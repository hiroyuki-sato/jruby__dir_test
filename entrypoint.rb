#require 'colorize'
#java_import 'org.slf4j.Logger'
#java_import 'org.slf4j.LoggerFactory'

puts JRUBY_VERSION
puts RUBY_VERSION

#logger = LoggerFactory.getLogger('demo')

=begin
puts "__dir__: #{__dir__}"
puts "#{__FILE__}"
puts "File.dirname: #{File.dirname(__FILE__)}"
puts "-" * 20
logger.info "Ruby version: #{RUBY_VERSION}"
logger.info "Ruby platform: #{RUBY_PLATFORM}"
logger.info "Current file: #{__FILE__}"
puts "-" * 20

puts "Roses are red".red
puts "Violets are blue".blue
puts "I can use JRuby/Gradle".green
puts "And now you can too!".yellow
=end


require 'liquid'
require 'pp'
pp Liquid::Continue
pp Liquid::Continue
