# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_410_194_656) do
  create_table 'addresses', force: :cascade do |t|
    t.string 'street'
    t.string 'number'
    t.string 'zip'
    t.string 'neighborhood'
    t.string 'city'
    t.string 'federatedUnit'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'churches', force: :cascade do |t|
    t.string 'denomination'
    t.string 'congregation'
    t.integer 'address_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['address_id'], name: 'index_churches_on_address_id'
  end

  create_table 'classrooms', force: :cascade do |t|
    t.string 'description'
    t.integer 'teacher_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['teacher_id'], name: 'index_classrooms_on_teacher_id'
  end

  create_table 'congregational_histories', force: :cascade do |t|
    t.integer 'church_id', null: false
    t.date 'entry'
    t.date 'exit'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['church_id'], name: 'index_congregational_histories_on_church_id'
  end

  create_table 'disciplines', force: :cascade do |t|
    t.string 'description'
    t.date 'start'
    t.date 'end'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'events', force: :cascade do |t|
    t.string 'description'
    t.date 'date'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'grades', force: :cascade do |t|
    t.float 'note'
    t.integer 'discipline_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['discipline_id'], name: 'index_grades_on_discipline_id'
  end

  create_table 'medical_records', force: :cascade do |t|
    t.string 'question'
    t.boolean 'owns'
    t.string 'answer'
    t.string 'problem'
    t.string 'medicine'
    t.boolean 'featured'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'responsibles', force: :cascade do |t|
    t.string 'type'
    t.string 'name'
    t.string 'phone'
    t.string 'email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'students', force: :cascade do |t|
    t.string 'name'
    t.date 'birthDate'
    t.boolean 'studying'
    t.string 'grade'
    t.string 'schooling'
    t.string 'bloodType'
    t.string 'rg'
    t.string 'cpf'
    t.string 'birthCertificate'
    t.string 'birthCity'
    t.string 'birthFederateUnit'
    t.boolean 'baptizedInWater'
    t.boolean 'baptizedInholySpirit'
    t.boolean 'sundaySchoolStudent'
    t.boolean 'developingActivityInTheChurch'
    t.boolean 'canSwim'
    t.text 'comments'
    t.integer 'classroom_id', null: false
    t.integer 'address_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['address_id'], name: 'index_students_on_address_id'
    t.index ['classroom_id'], name: 'index_students_on_classroom_id'
  end

  create_table 'teachers', force: :cascade do |t|
    t.string 'name'
    t.date 'birthDate'
    t.string 'rg'
    t.string 'cpf'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'churches', 'addresses'
  add_foreign_key 'classrooms', 'teachers'
  add_foreign_key 'congregational_histories', 'churches'
  add_foreign_key 'grades', 'disciplines'
  add_foreign_key 'students', 'addresses'
  add_foreign_key 'students', 'classrooms'
end
