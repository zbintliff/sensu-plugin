require 'rubygems'
gem 'minitest' if RUBY_VERSION < '1.9.0'
require 'minitest/autorun'

module SensuPluginTestHelper
  def set_script(script)
    @script = File.join(File.dirname(__FILE__), script)
  end

  def run_script(*args)
    IO.popen(([@script] + args).join(' '), 'r+') do |child|
      child.read
    end
  end

  def run_script_with_input(input, *args)
    IO.popen(([@script] + args).join(' '), 'r+') do |child|
      child.puts input
      child.close_write
      child.read
    end
  end

  def fixture_path
    File.expand_path('../fixtures', __FILE__)
  end

  def fixture(f)
    File.new(File.join(fixture_path, f))
  end
end
