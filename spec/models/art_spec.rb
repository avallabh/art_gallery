require 'spec_helper'

describe Art do
  describe 'validations' do
    let(:blank) { [nil, ''] }
    let(:sale) { [true, false] }

    it { should have_valid(:title).when('Frankenstein') }
    it { should_not have_valid(:title).when(*blank) }

    it { should have_valid(:artist).when(Artist.new) }
    it { should_not have_valid(:artist).when(nil) }

    it { should have_valid(:type_of_art).when(TypeOfArt.new) }
    it { should_not have_valid(:type_of_art).when(nil) }

    it { should_not have_valid(:for_sale).when(*blank) }

    it { should have_valid(:collection).when(Collection.new) }
    it { should_not have_valid(:collection).when(nil) }

  end

  describe 'associations' do

    it { should belong_to(:artist) }
    it { should belong_to(:collection) }
    it { should belong_to(:type_of_art) }

  end

end
