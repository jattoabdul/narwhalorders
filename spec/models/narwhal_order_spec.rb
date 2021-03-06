require 'rails_helper'

RSpec.describe NarwhalOrder, type: :model do
  describe 'Factories' do
    context 'Valid factory' do
      subject { build(:narwhal_order) }
      specify { should be_valid }
    end
    context 'Invalid factory' do
      subject { build(:invalid_narwhal_order) }
      specify { is_expected.not_to be_valid }
    end
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:shop) }
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