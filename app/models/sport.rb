# frozen_string_literal: true

class Sport < ApplicationRecord
  validates :name, presence: true
end
