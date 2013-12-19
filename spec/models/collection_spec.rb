require 'spec_helper'

describe Collection do
  describe 'validations' do
    let(:blank) { [nil, ''] }

    it { should have_valid(:name).when('Frankenstein') }
    it { should_not have_valid(:name).when(*blank) }
  end

  describe 'associations' do
    it { should have_many(:arts) }
    it { should have_many(:customer_collections) }
    it { should have_many(:customers).through(:customer_collections) }
  end

end
