LIB_DIR = File.expand_path("../../../lib", __FILE__)
# $LOAD_PATH.unshift(LIB_DIR)

require 'aruba/cucumber'

Before do
  @original_rubylib = ENV['RUBYLIB']
  ENV['RUBYLIB'] = LIB_DIR + File::PATH_SEPARATOR + ENV['RUBYLIB'].to_s
end

After do
  ENV['RUBYLIB'] = @original_rubylib
end
