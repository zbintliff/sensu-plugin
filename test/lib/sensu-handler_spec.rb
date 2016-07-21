require_relative '../spec_helper.rb'
require 'sensu-handler'

class DummyHandler < Sensu::Handler
  at_exit do
    ## override the autorun feature
    @@autorun = false
  end
end


describe 'Sensu::Handler' do
  before do
    @handler = DummyHandler.new()
    @handler.handle
  end

  describe '#handle' do
    it 'should return error if no handler method is provided' do
      expect{@handler.handle}.to output("ignoring event -- no handler defined\n").to_stdout
    end
  end
end
