require_relative 'helpers'

RSpec.configure do |c|
  c.include Helpers
end

RSpec.describe 'an example group' do
  #puts "Here I see the method: #{help}?"

  it 'has access to the helper methods defined in the module' do
    expect(help).to be(:available)
  end

end