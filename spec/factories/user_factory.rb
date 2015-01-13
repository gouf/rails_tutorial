FactoryGirl.define do
  factory :user, class: User do
    name  'Michael Hatrl'
    email 'michael@example.com'
    password 'foobar'
    password_confirmation 'foobar'
  end
end
