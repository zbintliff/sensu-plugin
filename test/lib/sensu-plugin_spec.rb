require_relative '../spec_helper.rb'

describe Sensu::Plugin do
  it 'shold have proper exit codes' do
    expect(Sensu::Plugin::EXIT_CODES['OK']).to eq 0
    expect(Sensu::Plugin::EXIT_CODES['WARNING']).to eq 1
    expect(Sensu::Plugin::EXIT_CODES['CRITICAL']).to eq 2
    expect(Sensu::Plugin::EXIT_CODES['UNKNOWN']).to eq 3
  end
end
