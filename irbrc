#!/usr/bin/ruby
require "irb/completion"
require "irb/ext/save-history"

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Disable 'mutliline' support due to poor pasting performance
 # see https://github.com/ruby/irb/issues/43
 IRB.conf[:USE_MULTILINE] = false

# require "awesome_print"
# seems to be giving ArgumentError (wrong number of arguments (given 1, expected 0))
# AwesomePrint.irb!
