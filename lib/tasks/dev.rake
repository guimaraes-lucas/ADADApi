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

  require 'rubocop/rake_task'

  desc 'Run RuboCop on the lib directory'
  RuboCop::RakeTask.new(:rubocop) do |task|
    task.patterns = ['lib/**/*.rb']
    # only show the files with failures
    task.formatters = ['files']
    # don't abort rake on failure
    task.fail_on_error = false
  end
end
