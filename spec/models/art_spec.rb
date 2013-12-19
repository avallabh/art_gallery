require 'spec_helper'

describe Art do
  describe 'validations' do
    let(:blank) { [nil, ''] }
    let(:sale) { [true, false] }

    it { should have_valid(:title).when('Frankenstein') }
    it { should_not have_valid(:title).when(*blank) }

    it { should have_valid(:artist_id).when(1) }
    it { should_not have_valid(:artist_id).when(*blank) }

    it { should have_valid(:type_of_art_id).when(1) }
    it { should_not have_valid(:type_of_art_id).when(*blank) }

    it { should_not have_valid(:for_sale).when(*blank) }

    it { should have_valid(:collection_id).when(1) }
    it { should_not have_valid(:collection_id).when(*blank) }

  end

  describe 'associations' do

    it { should belong_to(:artist).dependent(:destroy) }
    it { should belong_to(:collection).dependent(:destroy) }
    it { should belong_to(:type_of_art).dependent(:destroy) }

  end

end
