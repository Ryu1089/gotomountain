FactoryBot.define do
  factory :mountain do
    association :user
    name { "富士山" }
    season { "冬" }
    start { "13:47:21" }
    endtime { "15:47:21" }
    food { "3"}
    water { 3 }
    after(:build) do |post|
      post.image.attach(io: File.open('spec/fixtures/images/test.jpg'), filename: 'test.jpg', content_type: 'image/jpg')
    end
  end
end