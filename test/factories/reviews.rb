# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    overall_grade { "MyString" }
    analysis_summary { "MyText" }
    review_timestamp { "2025-11-10 22:14:49" }
    prd { nil }
  end
end
