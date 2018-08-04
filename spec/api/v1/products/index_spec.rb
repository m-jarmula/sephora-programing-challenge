require 'rails_helper'

RSpec.describe 'API V1 products index', type: :request do
  before do
    @p1 = create(:product)
    @p2 = create(:product, :skincare)
  end

  subject do
    get '/api/v1/products', xhr: true
    response
  end

  it { is_expected.to have_http_status(:ok) }

  it 'return all products' do
    response = JSON.parse(subject.body)
    expect(response.size).to eq(2)
  end

  it do
    response = JSON.parse(subject.body)

    product1 = response[0]
    expect(product1['id']).to eq(@p1.id)

    product2 = response[1]
    expect(product2['id']).to eq(@p2.id)
  end
end
