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

ActiveRecord::Schema.define(version: 20_200_412_175_900) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'addresses', force: :cascade do |t|
    t.string 'street'
    t.string 'number'
    t.string 'zip'
    t.string 'neighborhood'
    t.string 'city'
    t.string 'federatedUnit'
    t.text 'complement'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'attendance_diaries', force: :cascade do |t|
    t.bigint 'student_id', null: false
    t.bigint 'lesson_id', null: false
    t.boolean 'present'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['lesson_id'], name: 'index_attendance_diaries_on_lesson_id'
    t.index ['student_id'], name: 'index_attendance_diaries_on_student_id'
  end

  create_table 'births', force: :cascade do |t|
    t.date 'date'
    t.string 'certificate'
    t.bigint 'address_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['address_id'], name: 'index_births_on_address_id'
  end

  create_table 'churches', force: :cascade do |t|
    t.string 'denomination'
    t.string 'congregation'
    t.bigint 'address_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['address_id'], name: 'index_churches_on_address_id'
  end

  create_table 'classrooms', force: :cascade do |t|
    t.string 'description'
    t.bigint 'teacher_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['teacher_id'], name: 'index_classrooms_on_teacher_id'
  end

  create_table 'congregational_histories', force: :cascade do |t|
    t.bigint 'church_id', null: false
    t.date 'entry'
    t.date 'exit'
    t.bigint 'student_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['church_id'], name: 'index_congregational_histories_on_church_id'
    t.index ['student_id'], name: 'index_congregational_histories_on_student_id'
  end

  create_table 'disciplines', force: :cascade do |t|
    t.string 'description'
    t.date 'start'
    t.date 'end'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'documents', force: :cascade do |t|
    t.string 'description'
    t.string 'registration'
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
    t.bigint 'discipline_id', null: false
    t.bigint 'student_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['discipline_id'], name: 'index_grades_on_discipline_id'
    t.index ['student_id'], name: 'index_grades_on_student_id'
  end

  create_table 'lessons', force: :cascade do |t|
    t.string 'description'
    t.date 'date'
    t.bigint 'classroom_id', null: false
    t.bigint 'discipline_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['classroom_id'], name: 'index_lessons_on_classroom_id'
    t.index ['discipline_id'], name: 'index_lessons_on_discipline_id'
  end

  create_table 'medical_records', force: :cascade do |t|
    t.string 'question'
    t.boolean 'owns'
    t.string 'answer'
    t.string 'problem'
    t.string 'medicine'
    t.boolean 'featured'
    t.bigint 'student_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['student_id'], name: 'index_medical_records_on_student_id'
  end

  create_table 'relationships', force: :cascade do |t|
    t.bigint 'student_id', null: false
    t.bigint 'responsible_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['responsible_id'], name: 'index_relationships_on_responsible_id'
    t.index ['student_id'], name: 'index_relationships_on_student_id'
  end

  create_table 'responsibles', force: :cascade do |t|
    t.string 'relationship'
    t.string 'name'
    t.string 'phone'
    t.string 'email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'students', force: :cascade do |t|
    t.string 'name'
    t.bigint 'birth_id', null: false
    t.boolean 'studying'
    t.string 'grade'
    t.string 'schooling'
    t.string 'blood_type'
    t.boolean 'baptized_in_water'
    t.boolean 'baptized_in_holy_spirit'
    t.boolean 'sunday_school_student'
    t.boolean 'developing_activity_in_the_church'
    t.boolean 'can_swim'
    t.text 'comments'
    t.bigint 'classroom_id', null: false
    t.bigint 'address_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['address_id'], name: 'index_students_on_address_id'
    t.index ['birth_id'], name: 'index_students_on_birth_id'
    t.index ['classroom_id'], name: 'index_students_on_classroom_id'
  end

  create_table 'teachers', force: :cascade do |t|
    t.string 'name'
    t.bigint 'birth_id', null: false
    t.bigint 'address_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['address_id'], name: 'index_teachers_on_address_id'
    t.index ['birth_id'], name: 'index_teachers_on_birth_id'
  end

  create_table 'wallet_students', force: :cascade do |t|
    t.bigint 'document_id', null: false
    t.bigint 'student_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['document_id'], name: 'index_wallet_students_on_document_id'
    t.index ['student_id'], name: 'index_wallet_students_on_student_id'
  end

  create_table 'wallet_teachers', force: :cascade do |t|
    t.bigint 'document_id', null: false
    t.bigint 'teacher_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['document_id'], name: 'index_wallet_teachers_on_document_id'
    t.index ['teacher_id'], name: 'index_wallet_teachers_on_teacher_id'
  end

  add_foreign_key 'attendance_diaries', 'lessons'
  add_foreign_key 'attendance_diaries', 'students'
  add_foreign_key 'births', 'addresses'
  add_foreign_key 'churches', 'addresses'
  add_foreign_key 'classrooms', 'teachers'
  add_foreign_key 'congregational_histories', 'churches'
  add_foreign_key 'congregational_histories', 'students'
  add_foreign_key 'grades', 'disciplines'
  add_foreign_key 'grades', 'students'
  add_foreign_key 'lessons', 'classrooms'
  add_foreign_key 'lessons', 'disciplines'
  add_foreign_key 'medical_records', 'students'
  add_foreign_key 'relationships', 'responsibles'
  add_foreign_key 'relationships', 'students'
  add_foreign_key 'students', 'addresses'
  add_foreign_key 'students', 'births'
  add_foreign_key 'students', 'classrooms'
  add_foreign_key 'teachers', 'addresses'
  add_foreign_key 'teachers', 'births'
  add_foreign_key 'wallet_students', 'documents'
  add_foreign_key 'wallet_students', 'students'
  add_foreign_key 'wallet_teachers', 'documents'
  add_foreign_key 'wallet_teachers', 'teachers'
end
