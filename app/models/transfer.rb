# frozen_string_literal: true

class Transfer < ApplicationRecord
  belongs_to :player
  belongs_to :team
end
