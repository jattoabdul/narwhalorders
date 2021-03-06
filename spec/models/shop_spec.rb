require 'rails_helper'

RSpec.describe Shop, type: :model do
  describe 'Factories' do
    context 'Valid factory' do
      subject { build(:shop) }
      specify { should be_valid }
    end
    context 'Invalid factory' do
      subject { build(:invalid_shop) }
      specify { is_expected.not_to be_valid }
    end
  end

  describe 'Associations' do
    it { is_expected.to have_many(:narwhal_orders) }
  end

  describe 'Validations' do
  end

  describe 'Callbacks' do
  end

  describe 'ClassMethods' do
  end

  describe 'InstanceMethods' do
  end
end