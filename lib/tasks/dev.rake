# frozen_string_literal: true

namespace :dev do
  desc 'Setting up the development environment'
  task setup: :environment do
    puts 'Reseting the database...'
    `rails db:drop db:create db:migrate`

    puts 'Registering events...'
    20.times do |_i|
      Event.create!(
        description: Faker::Music.band,
        date: Faker::Date.forward
      )
    end
    puts 'Events successfully registered'

    #######################

    puts 'Registering teachers...'
    10.times do |_i|
      Teacher.create!(
        name: Faker::Superhero.name,
        birth: create_fake_older_birth,
        address: create_fake_address,
        documents: create_fake_documents
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

    puts 'Registering students...'
    200.times do |_i|
      Student.create!(
        name: Faker::Movies::StarWars.character,
        birth: create_fake_underage_birth,
        studying: Faker::Boolean.boolean,
        grade: "#{rand(1..9)}º year",
        schooling: "#{rand(1..2)}º grade",
        blood_type: ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'].sample,
        baptized_in_water: Faker::Boolean.boolean,
        baptized_in_holy_spirit: Faker::Boolean.boolean,
        sunday_school_student: Faker::Boolean.boolean,
        developing_activity_in_the_church: Faker::Boolean.boolean,
        can_swim: Faker::Boolean.boolean,
        comments: Faker::Lorem.sentence,
        classroom: Classroom.all.sample,
        address: create_fake_address,
        documents: create_fake_documents
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

    puts 'Registering relationship...'
    300.times do |_i|
      Relationship.create!(
        student: Student.all.sample,
        responsible: Responsible.all.sample
      )
    end
    puts 'Relationship successfully registered'

    #######################

    puts 'Registering congregational history...'
    200.times do |_i|
      CongregationalHistory.create!(
        church: create_fake_church,
        entry: Faker::Date.between(
          from: 8.years.ago,
          to: 4.years.ago
),
        exit: Faker::Date.between(
          from: 3.years.ago,
          to: Date.today
),
        student: Student.all.sample
                            )
    end
    puts 'Congregational history successfully registered'

    #######################

    puts 'Registering medical record...'
    200.times do |_i|
      MedicalRecord.create!(
        question: Faker::TvShows::HowIMetYourMother.quote,
        owns: Faker::Boolean.boolean,
        answer: Faker::TvShows::HowIMetYourMother.quote,
        problem: Faker::TvShows::HowIMetYourMother.catch_phrase,
        medicine: Faker::TvShows::HowIMetYourMother.high_five,
        featured: Faker::Boolean.boolean,
        student: Student.all.sample
          )
    end
    puts 'Medical record successfully registered'

    #######################

    puts 'Registering grades...'
    300.times do |_i|
      Grade.create!(
        note: rand(1.0..10.0).round(2),
        discipline: create_fake_discipline,
        student: Student.all.sample
          )
    end
    puts 'Grades successfully registered'

    #######################

    puts 'Registering lessons...'
    Discipline.all.each do |discipline|
      rand(9..12).times do |_i|
        Lesson.create!(
          discipline: discipline,
          date: Faker::Date.between(
            from: discipline.begin,
            to: discipline.end
),
          description: Faker::Book.title
          )
      end
    end
    puts 'Lessons successfully registered'
  end

  private

  def create_fake_address
    Address.create(
      street: Faker::Address.street_name,
      number: Faker::Address.building_number,
      zip: Faker::Address.zip,
      neighborhood: Faker::Address.community,
      city: Faker::Address.city,
      federatedUnit: Faker::Address.state_abbr,
      complement: Faker::Address.secondary_address
        )
  end

  def create_fake_underage_birth
    Birth.create(
      date: Faker::Date.birthday(min_age: 8, max_age: 17),
      certificate: Faker::DrivingLicence.northern_irish_driving_licence,
      address: create_fake_address
        )
  end

  def create_fake_older_birth
    Birth.create(
      date: Faker::Date.birthday(min_age: 18, max_age: 65),
      certificate: Faker::DrivingLicence.northern_irish_driving_licence,
      address: create_fake_address
        )
  end

  def create_fake_documents
    documents = []
    rand(1..2).times do |_i|
      documents.push(Document.create!(
                       description: %w[RG CPF].sample,
                       registration: Faker::DrivingLicence.northern_irish_driving_licence
          ))
    end
    documents
  end

  def create_fake_church
    Church.create(
      denomination: Faker::Movies::LordOfTheRings.location,
      congregation: Faker::Movies::LordOfTheRings.character,
      address: create_fake_address
        )
  end

  def create_fake_discipline
    Discipline.create(
      description: Faker::Book.title,
      begin: Faker::Date.between(from: 8.years.ago, to: Date.today),
      end: Faker::Date.forward,
        )
  end
end
