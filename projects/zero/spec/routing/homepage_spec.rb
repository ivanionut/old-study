require 'rails_helper'

describe 'Homepage routing' do

  it 'should route to homepage controller' do
    expect(get: '/').to route_to(controller: 'homepage', action: 'index')
  end

end