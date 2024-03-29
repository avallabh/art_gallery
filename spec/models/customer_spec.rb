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

  describe 'total_amount method' do

    it 'subtotals all a customers sales' do

      person = Customer.create!(name: 'Ajay')
      artist1 = Artist.create!(name: 'riot plz')
      type1 = TypeOfArt.create!(name: 'surrender')
      coll1 = Collection.create!(name: 'french')

      piece = Art.create!(title: 'monkey', artist_id: artist1.id, type_of_art_id: type1.id,
        customer_id: person.id, collection_id: coll1.id, for_sale: true, cost_in_pennies: 1000)

      expect(person.total_spent).to eq(1000)

    # person = FactoryGirl.create(:person, name: 'Ajay')
    # piece = FactoryGirl.create(:piece, title: 'Hippo', cost: 100.00, for_sale: true)

    # expect(Customer.total_amount(.cost).to eq(piece.cost))
    end
  end
end
