require 'spec_helper'

describe Customer do
  describe 'validations' do
    let(:blank) { [nil, ''] }

    it { should have_valid(:name).when('Frankenstein') }
    it { should_not have_valid(:name).when(*blank) }
  end

  describe 'associations' do
    it { should have_many(:arts) }
    it { should have_many(:customer_collections) }
    it { should have_many(:collections).through(:customer_collections) }
  end

  # describe 'total_amount method' do

  #     person = Customer.create!(name: 'Ajay')
  #     piece = Art.create!(title: 'monkey swings from a tree')


  #   # person = FactoryGirl.create(:person, name: 'Ajay')
  #   # piece = FactoryGirl.create(:piece, title: 'Hippo', cost: 100.00, for_sale: true)

  #   # expect(Customer.total_amount(.cost).to eq(piece.cost))

  # end
end
