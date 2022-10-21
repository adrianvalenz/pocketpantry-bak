require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
  end
end
