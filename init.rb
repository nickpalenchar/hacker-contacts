### Hacker Contacts ###
#
# Launch this Ruby file fromt he command line
# to get started
#

APP_ROOT = File.dirname(__FILE__)

#require File.join(APP_ROOT, 'lib', 'guide.rb')

$:.unshift( File.join(APP_ROOT, 'lib') )

require 'guide'

guide = Guide.new('contacts.txt')
guide.launch!
