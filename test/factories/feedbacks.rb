# frozen_string_literal: true

FactoryBot.define do
  factory :feedback do
    category { "MyString" }
    specific_feedback { "MyText" }
    suggested_improvement { "MyText" }
    review { nil }
  end
end
