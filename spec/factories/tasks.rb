FactoryGirl.define do
  factory :task do
    points 1
    name "MyString"
    priority 1
    state 1
    user_id nil
    sprint_id nil
  end
end
