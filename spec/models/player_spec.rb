# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'delegations' do
    it { is_expected.to have_many(:transfers).dependent(:destroy) }
    it { is_expected.to have_many(:teams).through(:transfers) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
