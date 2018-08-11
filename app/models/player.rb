# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :transfers, dependent: :destroy
  has_many :teams, through: :transfers

  validates :name, presence: true
end
