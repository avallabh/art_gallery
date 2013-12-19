require 'spec_helper'

describe Art do
  describe 'validations' do
    let(:blank) { [nil, ''] }
    let(:sale) { [true, false] }

    it { should have_valid(:title).when('Frankenstein') }
    it { should_not have_valid(:title).when(*blank) }

    it { should have_valid(:artist_id).when(1) }
    it { should_not have_valid(:artist_id).when(*blank) }

    it { should have_valid(:type_id).when(1) }
    it { should_not have_valid(:type_id).when(*blank) }

    it { should_not have_valid(:for_sale).when(*blank) }

    it { should have_valid(:collection_id).when(1) }
    it { should_not have_valid(:collection_id).when(*blank) }

  end

  describe 'associations' do

    it { should belong_to(:artist)
          inverse_of :art }
    it { should belong_to(:collection) }
    it { should belong_to(:type_of_art) }

    # it { should have_one(:artist)}
    # it { should have_one(:collection)}
    # it { should have_one(:type_of_art)}
  end

end
