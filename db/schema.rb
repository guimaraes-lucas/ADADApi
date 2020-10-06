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

ActiveRecord::Schema.define(version: 20_201_006_194_554) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'addresses', force: :cascade do |t|
    t.string 'street'
    t.string 'number'
    t.string 'neighborhood'
    t.string 'city'
    t.string 'state'
    t.string 'country'
    t.string 'postcode'
    t.text 'complement'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'attendance_diaries', force: :cascade do |t|
    t.bigint 'student_id', null: false
    t.bigint 'lesson_id', null: false
    t.boolean 'is_present'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['lesson_id'], name: 'index_attendance_diaries_on_lesson_id'
    t.index ['student_id'], name: 'index_attendance_diaries_on_student_id'
  end

  create_table 'bill_items', force: :cascade do |t|
    t.integer 'installment_number'
    t.decimal 'value'
    t.date 'due_date'
    t.boolean 'is_paid'
    t.bigint 'bill_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['bill_id'], name: 'index_bill_items_on_bill_id'
  end

  create_table 'bills', force: :cascade do |t|
    t.string 'description'
    t.decimal 'total'
    t.date 'release_date'
    t.integer 'number_of_installments'
    t.integer 'situation'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
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

  create_table 'class_deployments', force: :cascade do |t|
    t.string 'description'
    t.integer 'sequence'
    t.bigint 'class_plan_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['class_plan_id'], name: 'index_class_deployments_on_class_plan_id'
  end

  create_table 'class_plans', force: :cascade do |t|
    t.string 'title'
    t.date 'date'
    t.string 'theme'
    t.text 'versicle'
    t.text 'objective'
    t.text 'content'
    t.text 'activity'
    t.text 'challenge'
    t.text 'appraisal'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'class_resources', force: :cascade do |t|
    t.string 'description'
    t.bigint 'class_plan_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['class_plan_id'], name: 'index_class_resources_on_class_plan_id'
  end

  create_table 'classrooms', force: :cascade do |t|
    t.string 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'congregational_histories', force: :cascade do |t|
    t.bigint 'church_id', null: false
    t.date 'entry'
    t.date 'exit'
    t.bigint 'person_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['church_id'], name: 'index_congregational_histories_on_church_id'
    t.index ['person_id'], name: 'index_congregational_histories_on_person_id'
  end

  create_table 'disciplines', force: :cascade do |t|
    t.string 'description'
    t.date 'begin'
    t.date 'end'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'documents', force: :cascade do |t|
    t.string 'description'
    t.string 'registration'
    t.bigint 'person_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['person_id'], name: 'index_documents_on_person_id'
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

  create_table 'kinships', force: :cascade do |t|
    t.bigint 'student_id', null: false
    t.bigint 'responsible_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['responsible_id'], name: 'index_kinships_on_responsible_id'
    t.index ['student_id'], name: 'index_kinships_on_student_id'
  end

  create_table 'lessons', force: :cascade do |t|
    t.string 'description'
    t.date 'date'
    t.bigint 'discipline_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['discipline_id'], name: 'index_lessons_on_discipline_id'
  end

  create_table 'medical_records', force: :cascade do |t|
    t.string 'question'
    t.boolean 'owns'
    t.string 'answer'
    t.string 'problem'
    t.string 'medicine'
    t.boolean 'featured'
    t.bigint 'person_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['person_id'], name: 'index_medical_records_on_person_id'
  end

  create_table 'people', force: :cascade do |t|
    t.string 'name'
    t.string 'phone'
    t.string 'email'
    t.bigint 'birth_id', null: false
    t.bigint 'address_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['address_id'], name: 'index_people_on_address_id'
    t.index ['birth_id'], name: 'index_people_on_birth_id'
  end

  create_table 'responsibles', force: :cascade do |t|
    t.string 'kinship'
    t.bigint 'person_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['person_id'], name: 'index_responsibles_on_person_id'
  end

  create_table 'students', force: :cascade do |t|
    t.bigint 'person_id', null: false
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
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['classroom_id'], name: 'index_students_on_classroom_id'
    t.index ['person_id'], name: 'index_students_on_person_id'
  end

  create_table 'teacher_class_plans', force: :cascade do |t|
    t.bigint 'teacher_id', null: false
    t.bigint 'class_plan_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['class_plan_id'], name: 'index_teacher_class_plans_on_class_plan_id'
    t.index ['teacher_id'], name: 'index_teacher_class_plans_on_teacher_id'
  end

  create_table 'teacher_classrooms', force: :cascade do |t|
    t.bigint 'teacher_id', null: false
    t.bigint 'classroom_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['classroom_id'], name: 'index_teacher_classrooms_on_classroom_id'
    t.index ['teacher_id'], name: 'index_teacher_classrooms_on_teacher_id'
  end

  create_table 'teachers', force: :cascade do |t|
    t.bigint 'person_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['person_id'], name: 'index_teachers_on_person_id'
  end

  create_table 'transactions', force: :cascade do |t|
    t.integer 'kind'
    t.bigint 'bill_id', null: false
    t.bigint 'person_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['bill_id'], name: 'index_transactions_on_bill_id'
    t.index ['person_id'], name: 'index_transactions_on_person_id'
  end

  add_foreign_key 'attendance_diaries', 'lessons'
  add_foreign_key 'attendance_diaries', 'students'
  add_foreign_key 'bill_items', 'bills'
  add_foreign_key 'births', 'addresses'
  add_foreign_key 'churches', 'addresses'
  add_foreign_key 'class_deployments', 'class_plans'
  add_foreign_key 'class_resources', 'class_plans'
  add_foreign_key 'congregational_histories', 'churches'
  add_foreign_key 'congregational_histories', 'people'
  add_foreign_key 'documents', 'people'
  add_foreign_key 'grades', 'disciplines'
  add_foreign_key 'grades', 'students'
  add_foreign_key 'kinships', 'responsibles'
  add_foreign_key 'kinships', 'students'
  add_foreign_key 'lessons', 'disciplines'
  add_foreign_key 'medical_records', 'people'
  add_foreign_key 'people', 'addresses'
  add_foreign_key 'people', 'births'
  add_foreign_key 'responsibles', 'people'
  add_foreign_key 'students', 'classrooms'
  add_foreign_key 'students', 'people'
  add_foreign_key 'teacher_class_plans', 'class_plans'
  add_foreign_key 'teacher_class_plans', 'teachers'
  add_foreign_key 'teacher_classrooms', 'classrooms'
  add_foreign_key 'teacher_classrooms', 'teachers'
  add_foreign_key 'teachers', 'people'
  add_foreign_key 'transactions', 'bills'
  add_foreign_key 'transactions', 'people'
end
