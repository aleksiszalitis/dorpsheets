# frozen_string_literal: true

class Sport < ApplicationRecord

  validate :name, presence: true
end
