# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :transfers, dependent: :destroy
  has_many :players, through: :transfers

  validates :name, presence: true
end
