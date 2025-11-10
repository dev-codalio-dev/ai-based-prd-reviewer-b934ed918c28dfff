# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :prd
  has_many :feedbacks, dependent: :destroy

  validates :overall_grade, presence: true
  validates :analysis_summary, presence: true

  rhino_owner :prd
  rhino_references [ :prd ]
end
