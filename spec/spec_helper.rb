require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  [SimpleCov::Formatter::Console,
   # Coverage HTML reports output
   SimpleCov::Formatter::HTMLFormatter]
)
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    # system('rubocop .')
    system('flog ./lib/*')
  end
end
