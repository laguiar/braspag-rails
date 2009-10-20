$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'braspag/rails'
require 'spec'
require 'ruby-debug'

require 'rspec_hpricot_matchers'
Spec::Runner.configure do |config|
  config.include(RspecHpricotMatchers)
end
