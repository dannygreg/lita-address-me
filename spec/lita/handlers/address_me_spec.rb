require "spec_helper"

describe Lita::Handlers::AddressMe, lita_handler: true do
  expected_string = 'The configured office address'
  
  before do
    registry.config.handlers.address_me.office_address = expected_string
  end

  it 'should respond with the address' do
     send_command('address me')
     expect(replies.last).to eq expected_string
  end
end
