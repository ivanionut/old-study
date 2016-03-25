require 'rails_helper'

RSpec.describe 'Prices routing' do

  # /prezzi_CATEGORY_PAGE.aspx

  it 'understand empty parameters' do
    expect(get: '/prezzi__.aspx').to route_to({controller: 'guided_offers', action: 'listing'})
    expect(get: '/prezzi_cellulari_.aspx').to route_to({controller: 'guided_offers', action: 'listing', category: 'cellulari'})
    expect(get: '/prezzi__1.aspx').to route_to({controller: 'guided_offers', action: 'listing', page: '1'})
  end

end