require 'spec_helper'

describe TypeOfArt do
  describe 'validations' do
    let(:blank) { [nil, ''] }

    it { should have_valid(:name).when('Frankenstein') }
    it { should_not have_valid(:name).when(*blank) }
  end

  describe 'associations' do
    it { should have_many(:arts) }
  end
end
