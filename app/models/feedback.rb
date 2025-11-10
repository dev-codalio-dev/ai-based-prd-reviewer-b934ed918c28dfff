# frozen_string_literal: true

class Feedback < ApplicationRecord
  belongs_to :review

  validates :category, presence: true
  validates :specific_feedback, presence: true

  rhino_owner :review
  rhino_references [ :review ]
end
