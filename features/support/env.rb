require 'aruba/cucumber'

LIB = File.expand_path("../../lib", __dir__)

Before do
  @original_rubylib = ENV['RUBYLIB']
  ENV['RUBYLIB'] = LIB + File::PATH_SEPARATOR + ENV['RUBYLIB'].to_s
end

After do
  ENV['RUBYLIB'] = @original_rubylib
end
