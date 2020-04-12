# frozen_string_literal: true

namespace :dev do
  require 'rubocop/rake_task'

  desc 'Run RuboCop on the lib directory'
  RuboCop::RakeTask.new(:rubocop) do |task|
    task.patterns = ['lib/**/*.rb']
    # only show the files with failures
    task.formatters = ['files']
    # don't abort rake on failure
    task.fail_on_error = false
  end

  desc 'Setting up the development environment'
  task setup: :environment do
    puts 'Registering events...'
    20.times do |_i|
      Event.create!(
        description: Faker::Music.band,
        date: Faker::Date.forward
      )
    end
    puts 'Events successfully registered'

    #######################

    puts 'Registering addresses...'
    200.times do |_i|
      Address.create(
        street: Faker::Address.street_address,
        number: Faker::Address.secondary_address,
        zip: Faker::Address.zip,
        neighborhood: Faker::Address.community,
        city: Faker::Address.city,
        federatedUnit: Faker::Address.state_abbr
        )
    end
    puts 'Addresses successfully registered'

    #######################

    puts 'Registering births...'
    200.times do |_i|
      Birth.create(
        date: Faker::Date.between(from: 65.years.ago, to: 8.years.ago),
        certificate: Faker::DrivingLicence.northern_irish_driving_licence,
        address: Address.all.sample
        )
    end
    puts 'Births successfully registered'

    #######################

    puts 'Registering document...'
    400.times do |_i|
      Document.create!(
        description: %w[RG CPF].sample,
        registration: Faker::DrivingLicence.northern_irish_driving_licence
      )
    end
    puts 'Document successfully registered'

    #######################

    puts 'Registering teachers...'
    10.times do |_i|
      Teacher.create!(
        name: Faker::Superhero.name,
        birth: Birth.all.sample,
        address: Address.all.sample,
        documents: Document.all.sample(rand(1..2))
      )
    end
    puts 'Teachers successfully registered'

    #######################

    puts 'Registering classrooms...'
    7.times do |_i|
      Classroom.create!(
        description: Faker::TvShows::Friends.location,
        teacher: Teacher.all.sample
      )
    end
    puts 'Classrooms successfully registered'

    #######################

    puts 'Registering classrooms...'
    7.times do |_i|
      Classroom.create!(
        description: Faker::TvShows::Friends.location,
        teacher: Teacher.all.sample
      )
    end
    puts 'Classrooms successfully registered'

    #######################

    puts 'Registering students...'
    200.times do |_i|
      Student.create!(
        name: Faker::Movies::StarWars.character,
        birth: Birth.all.sample,
        studying: Faker::Boolean.boolean,
        grade: "#{rand(1..9)} ano",
        schooling: "#{rand(1..2)} grau",
        bloodType: ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'].sample,
        baptizedInWater: Faker::Boolean.boolean,
        baptizedInholySpirit: Faker::Boolean.boolean,
        sundaySchoolStudent: Faker::Boolean.boolean,
        developingActivityInTheChurch: Faker::Boolean.boolean,
        canSwim: Faker::Boolean.boolean,
        comments: Faker::Lorem.sentence,
        classroom: Classroom.all.sample,
        address: Address.all.sample,
        documents: Document.all.sample(rand(1..2))
      )
    end
    puts 'Students successfully registered'

    #######################

    puts 'Registering responsibles...'
    150.times do |_i|
      Responsible.create!(
        relationship: Faker::Relationship.parent,
        name: Faker::TvShows::Friends.character,
        phone: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email
      )
    end
    puts 'Responsibles successfully registered'

    #######################

    puts 'Registering associate...'
    300.times do |_i|
      Associate.create!(
        student: Student.all.sample,
        responsible: Responsible.all.sample
      )
    end
    puts 'Associate successfully registered'
  end
end
