require 'faker'

FactoryGirl.define do
  factory :question do |f|
    f.title 'What is Rails?'
    f.description 'Explain definition of rails'
  end
end