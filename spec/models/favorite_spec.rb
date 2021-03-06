require 'rails_helper'

RSpec.describe Favorite, type: :model do
  subject(:favorite) { FactoryBot.create(:favorite) }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(favorite).to be_valid
    end

    it 'validates uniqueness' do
      expect(favorite).to validate_uniqueness_of(:user_id)
        .scoped_to(:favoritable_id, :favoritable_type)
        .with_message('can only favorite an item once')
    end
  end

  describe "Associations" do
    it { should belong_to(:user).inverse_of(:favorites) }
    it { should belong_to(:favoritable) }
  end

  describe "Indexes" do
    it { should have_db_index(:favoritable_id) }
    it { should have_db_index(:favoritable_type) }
    it { should have_db_index([:favoritable_id, :favoritable_type, :user_id]).unique }
  end
end
