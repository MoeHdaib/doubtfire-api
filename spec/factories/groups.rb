# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    group_set

    after(:build) do |group, eval|
      group.tutorial = group.group_set.unit.tutorials.first
    end
  end
end
