require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")
require 'adhearsion'
require 'adhearsion/initializer/asterisk'
require 'drb'

# http://help.cloudvox.com/faqs/getting-started/setup-for-ruby-adhearsion
desc "Make an outgoing phone call to number provided as 'call' (via Cloudvox)"
task :make_outgoing_call do
  if ENV['call']
    # Outgoing context from Cloudvox Switchboard, under "Outgoing settings (AMI)."
    # If you don't have one, create a free account at cloudvox.com and add an app.
    # For example:
    # outgoing_context = "outgoing-42"
    outgoing_context = "outgoing-804"

    Adhearsion = DRbObject.new_with_uri 'druby://localhost:9050'
    # channel example: Local/12063335555@outgoing-42
    Adhearsion.originate :channel => "Local/#{ENV['call']}@#{outgoing_context}",
      #:variables => {:foo_id => 123, :bar_id => bar.id},
      :caller_id => "2063576220",
      :context => outgoing_context,
      :application => 'AGI',
      # change this to your client 's hostname or IP
      :data => 'agi://this.computer.com/'

  else
    print """
Cloudvox Adhearsion outgoing example
http://help.cloudvox.com/
Syntax: rake make_outgoing_call call=12065554444

"""
    return
  end
end