# frozen_string_literal: true

namespace :dev do
  desc 'Setting up the development environment'
  task setup: :environment do
    puts 'Registering events...'
    100.times do |_i|
      Event.create!(
        description: Faker::Music.band,
        date: Faker::Date.forward
      )
    end
    puts 'Events successfully registered'
  end
end
