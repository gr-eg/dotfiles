#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 10000000

class Object
  def find_greg
    User.find_by_email 'greg@receptive.io'
  end
end
