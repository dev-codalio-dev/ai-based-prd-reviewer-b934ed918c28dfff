# frozen_string_literal: true

class Prd < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true

  rhino_owner :organization
  rhino_references [ :organization, :user ]
end
