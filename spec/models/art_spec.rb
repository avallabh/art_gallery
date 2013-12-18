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

    it { should have_valid(:for_sale).when(*sale) }
    it { should_not have_valid(:for_sale).when(*blank) }

    it { should have_valid(:collection_id).when(1) }
    it { should_not have_valid(:collection_id).when(*blank) }

  end
end
