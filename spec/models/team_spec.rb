# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'relations' do
    it { is_expected.to have_many(:transfers).dependent(:destroy) }
    it { is_expected.to have_many(:players).through(:transfers) }
  end

  describe 'valdiations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
