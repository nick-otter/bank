require 'client'
require 'formatter'

class Bank
  attr_reader :client, :formatter

  def initialize(client = Client.new, formatter = Formatter.new)
    @client = client
    @formatter = formatter
  end
end
