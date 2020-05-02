[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/guimaraes-lucas/adad-api)
[![Build Status](https://travis-ci.com/guimaraes-lucas/adad-api.svg?branch=master)](https://travis-ci.com/guimaraes-lucas/adad-api)
[![Coverage Status](https://coveralls.io/repos/github/guimaraes-lucas/adad-api/badge.svg?branch=master)](https://coveralls.io/github/guimaraes-lucas/adad-api?branch=master)
[![Maintainability](https://api.codeclimate.com/v1/badges/b04689da43995f4db68d/maintainability)](https://codeclimate.com/github/guimaraes-lucas/adad-api/maintainability)
[![Inline docs](http://inch-ci.org/github/guimaraes-lucas/adad-api.svg?branch=master)](http://inch-ci.org/github/guimaraes-lucas/adad-api)

# O que é esse projeto?

Uma api de bloco de notas feita com [Rails](https://rubyonrails.org).

# Instalação e execução

Existem duas maneiras de execução a primeira é utilizando o [Docker](https://docs.docker.com/docker-for-windows/install/), com o mesmo executando na maquina, utilize o seguinte comando:

```shell
docker build -t adad-api .
docker run -it -p 3000:3000 --name adad-api adad-api
```

# Recursos extras usados no Gitpod

 - https://github.com/marcopeg/docker-images/tree/master/gitpod-workspace-postgres

# Endpoints

| Helper                                                       | HTTP Verb | Path                                    | Controller#Action                |
| ------------------------------------------------------------ | --------- | --------------------------------------- | -------------------------------- |
| wallet_students_path                                         | GET       | /wallet_students(.:format)              | wallet_students#index            |
|                                                              | POST      | /wallet_students(.:format)              | wallet_students#create           |
| wallet_student_path                                          | GET       | /wallet_students/:id(.:format)          | wallet_students#show             |
|                                                              | PATCH     | /wallet_students/:id(.:format)          | wallet_students#update           |
|                                                              | PUT       | /wallet_students/:id(.:format)          | wallet_students#update           |
|                                                              | DELETE    | /wallet_students/:id(.:format)          | wallet_students#destroy          |
| wallet_teachers_path                                         | GET       | /wallet_teachers(.:format)              | wallet_teachers#index            |
|                                                              | POST      | /wallet_teachers(.:format)              | wallet_teachers#create           |
| wallet_teacher_path                                          | GET       | /wallet_teachers/:id(.:format)          | wallet_teachers#show             |
|                                                              | PATCH     | /wallet_teachers/:id(.:format)          | wallet_teachers#update           |
|                                                              | PUT       | /wallet_teachers/:id(.:format)          | wallet_teachers#update           |
|                                                              | DELETE    | /wallet_teachers/:id(.:format)          | wallet_teachers#destroy          |
| attendance_diaries_path                                      | GET       | /attendance_diaries(.:format)           | attendance_diaries#index         |
|                                                              | POST      | /attendance_diaries(.:format)           | attendance_diaries#create        |
| attendance_diary_path                                        | GET       | /attendance_diaries/:id(.:format)       | attendance_diaries#show          |
|                                                              | PATCH     | /attendance_diaries/:id(.:format)       | attendance_diaries#update        |
|                                                              | PUT       | /attendance_diaries/:id(.:format)       | attendance_diaries#update        |
|                                                              | DELETE    | /attendance_diaries/:id(.:format)       | attendance_diaries#destroy       |
| lessons_path                                                 | GET       | /lessons(.:format)                      | lessons#index                    |
|                                                              | POST      | /lessons(.:format)                      | lessons#create                   |
| lesson_path                                                  | GET       | /lessons/:id(.:format)                  | lessons#show                     |
|                                                              | PATCH     | /lessons/:id(.:format)                  | lessons#update                   |
|                                                              | PUT       | /lessons/:id(.:format)                  | lessons#update                   |
|                                                              | DELETE    | /lessons/:id(.:format)                  | lessons#destroy                  |
| relationships_path                                           | GET       | /relationships(.:format)                | relationships#index              |
|                                                              | POST      | /relationships(.:format)                | relationships#create             |
| relationship_path                                            | GET       | /relationships/:id(.:format)            | relationships#show               |
|                                                              | PATCH     | /relationships/:id(.:format)            | relationships#update             |
|                                                              | PUT       | /relationships/:id(.:format)            | relationships#update             |
|                                                              | DELETE    | /relationships/:id(.:format)            | relationships#destroy            |
| students_path                                                | GET       | /students(.:format)                     | students#index                   |
|                                                              | POST      | /students(.:format)                     | students#create                  |
| student_path                                                 | GET       | /students/:id(.:format)                 | students#show                    |
|                                                              | PATCH     | /students/:id(.:format)                 | students#update                  |
|                                                              | PUT       | /students/:id(.:format)                 | students#update                  |
|                                                              | DELETE    | /students/:id(.:format)                 | students#destroy                 |
| documents_path                                               | GET       | /documents(.:format)                    | documents#index                  |
|                                                              | POST      | /documents(.:format)                    | documents#create                 |
| document_path                                                | GET       | /documents/:id(.:format)                | documents#show                   |
|                                                              | PATCH     | /documents/:id(.:format)                | documents#update                 |
|                                                              | PUT       | /documents/:id(.:format)                | documents#update                 |
|                                                              | DELETE    | /documents/:id(.:format)                | documents#destroy                |
| births_path                                                  | GET       | /births(.:format)                       | births#index                     |
|                                                              | POST      | /births(.:format)                       | births#create                    |
| birth_path                                                   | GET       | /births/:id(.:format)                   | births#show                      |
|                                                              | PATCH     | /births/:id(.:format)                   | births#update                    |
|                                                              | PUT       | /births/:id(.:format)                   | births#update                    |
|                                                              | DELETE    | /births/:id(.:format)                   | births#destroy                   |
| teachers_path                                                | GET       | /teachers(.:format)                     | teachers#index                   |
|                                                              | POST      | /teachers(.:format)                     | teachers#create                  |
| teacher_path                                                 | GET       | /teachers/:id(.:format)                 | teachers#show                    |
|                                                              | PATCH     | /teachers/:id(.:format)                 | teachers#update                  |
|                                                              | PUT       | /teachers/:id(.:format)                 | teachers#update                  |
|                                                              | DELETE    | /teachers/:id(.:format)                 | teachers#destroy                 |
| classrooms_path                                              | GET       | /classrooms(.:format)                   | classrooms#index                 |
|                                                              | POST      | /classrooms(.:format)                   | classrooms#create                |
| classroom_path                                               | GET       | /classrooms/:id(.:format)               | classrooms#show                  |
|                                                              | PATCH     | /classrooms/:id(.:format)               | classrooms#update                |
|                                                              | PUT       | /classrooms/:id(.:format)               | classrooms#update                |
|                                                              | DELETE    | /classrooms/:id(.:format)               | classrooms#destroy               |
| grades_path                                                  | GET       | /grades(.:format)                       | grades#index                     |
|                                                              | POST      | /grades(.:format)                       | grades#create                    |
| grade_path                                                   | GET       | /grades/:id(.:format)                   | grades#show                      |
|                                                              | PATCH     | /grades/:id(.:format)                   | grades#update                    |
|                                                              | PUT       | /grades/:id(.:format)                   | grades#update                    |
|                                                              | DELETE    | /grades/:id(.:format)                   | grades#destroy                   |
| disciplines_path                                             | GET       | /disciplines(.:format)                  | disciplines#index                |
|                                                              | POST      | /disciplines(.:format)                  | disciplines#create               |
| discipline_path                                              | GET       | /disciplines/:id(.:format)              | disciplines#show                 |
|                                                              | PATCH     | /disciplines/:id(.:format)              | disciplines#update               |
|                                                              | PUT       | /disciplines/:id(.:format)              | disciplines#update               |
|                                                              | DELETE    | /disciplines/:id(.:format)              | disciplines#destroy              |
| medical_records_path                                         | GET       | /medical_records(.:format)              | medical_records#index            |
|                                                              | POST      | /medical_records(.:format)              | medical_records#create           |
| medical_record_path                                          | GET       | /medical_records/:id(.:format)          | medical_records#show             |
|                                                              | PATCH     | /medical_records/:id(.:format)          | medical_records#update           |
|                                                              | PUT       | /medical_records/:id(.:format)          | medical_records#update           |
|                                                              | DELETE    | /medical_records/:id(.:format)          | medical_records#destroy          |
| congregational_histories_path                                | GET       | /congregational_histories(.:format)     | congregational_histories#index   |
|                                                              | POST      | /congregational_histories(.:format)     | congregational_histories#create  |
| congregational_history_path                                  | GET       | /congregational_histories/:id(.:format) | congregational_histories#show    |
|                                                              | PATCH     | /congregational_histories/:id(.:format) | congregational_histories#update  |
|                                                              | PUT       | /congregational_histories/:id(.:format) | congregational_histories#update  |
|                                                              | DELETE    | /congregational_histories/:id(.:format) | congregational_histories#destroy |
| churches_path                                                | GET       | /churches(.:format)                     | churches#index                   |
|                                                              | POST      | /churches(.:format)                     | churches#create                  |
| church_path                                                  | GET       | /churches/:id(.:format)                 | churches#show                    |
|                                                              | PATCH     | /churches/:id(.:format)                 | churches#update                  |
|                                                              | PUT       | /churches/:id(.:format)                 | churches#update                  |
|                                                              | DELETE    | /churches/:id(.:format)                 | churches#destroy                 |
| addresses_path                                               | GET       | /addresses(.:format)                    | addresses#index                  |
|                                                              | POST      | /addresses(.:format)                    | addresses#create                 |
| address_path                                                 | GET       | /addresses/:id(.:format)                | addresses#show                   |
|                                                              | PATCH     | /addresses/:id(.:format)                | addresses#update                 |
|                                                              | PUT       | /addresses/:id(.:format)                | addresses#update                 |
|                                                              | DELETE    | /addresses/:id(.:format)                | addresses#destroy                |
| responsibles_path                                            | GET       | /responsibles(.:format)                 | responsibles#index               |
|                                                              | POST      | /responsibles(.:format)                 | responsibles#create              |
| responsible_path                                             | GET       | /responsibles/:id(.:format)             | responsibles#show                |
|                                                              | PATCH     | /responsibles/:id(.:format)             | responsibles#update              |
|                                                              | PUT       | /responsibles/:id(.:format)             | responsibles#update              |
|                                                              | DELETE    | /responsibles/:id(.:format)             | responsibles#destroy             |
| events_path                                                  | GET       | /events(.:format)                       | events#index                     |
|                                                              | POST      | /events(.:format)                       | events#create                    |
| event_path                                                   | GET       | /events/:id(.:format)                   | events#show                      |
|                                                              | PATCH     | /events/:id(.:format)                   | events#update                    |
|                                                              | PUT       | /events/:id(.:format)                   | events#update                    |
|                                                              | DELETE    | /events/:id(.:format)                   | events#destroy                   |
