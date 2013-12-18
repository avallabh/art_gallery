require 'spec_helper'

describe Collection do
  describe 'validations' do
    let(:blank) { [nil, ''] }

    it { should have_valid(:name).when('Frankenstein') }
    it { should_not have_valid(:name).when(*blank) }
  end
end
