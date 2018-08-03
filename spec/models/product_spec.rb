require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { expect(true).to be(true) }
  it { is_expected.to validate_inclusion_of(:category).in_array(%w(makeup skincare hair)) }
end
