# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transfer, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to(:player) }
    it { is_expected.to belong_to(:team) }
  end
end
