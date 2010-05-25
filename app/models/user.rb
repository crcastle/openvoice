class User < ActiveRecord::Base
  acts_as_authentic

  has_many :phone_numbers
  has_many :voicemails
  has_many :messagings
  has_many :outgoing_calls # outbound calls
  has_many :call_logs   # inbound calls
  has_many :contacts
  has_many :profiles
end
