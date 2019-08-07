FactoryBot.define do
  date_array = ["09/2010", "06/2018", "12/2012", "05/2014", "02/2015", "11/2009", "08/2012"]
  url = "http://lorempixel.com/200/200/"

factory :random_beer, class: Beer do
    name { Faker::FunnyName.name }
    tagline { Faker::Lorem.sentence }
    image_url { url }
    description { Faker::Lorem.sentence }
    first_brewed { date_array.sample }
    abv { Faker::Number.between(5, 20) }
    ibu { Faker::Number.between(5, 100) }
    ph { Faker::Number.between(1, 9) }

  end
end