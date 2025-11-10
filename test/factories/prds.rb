# frozen_string_literal: true

FactoryBot.define do
  factory :prd do
    title { "MyString" }
    content { "MyText" }
    upload_timestamp { "2025-11-10 22:14:23" }
    user { nil }
    organization { nil }
  end
end
