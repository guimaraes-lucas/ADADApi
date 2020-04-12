[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/guimaraes-lucas/adad-api)
[![Build Status](https://travis-ci.com/guimaraes-lucas/adad-api.svg?branch=master)](https://travis-ci.com/guimaraes-lucas/adad-api)
[![Maintainability](https://api.codeclimate.com/v1/badges/b04689da43995f4db68d/maintainability)](https://codeclimate.com/github/guimaraes-lucas/adad-api/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/b04689da43995f4db68d/test_coverage)](https://codeclimate.com/github/guimaraes-lucas/adad-api/test_coverage)
[![Inline docs](http://inch-ci.org/github/guimaraes-lucas/adad-api.svg?branch=master)](http://inch-ci.org/github/guimaraes-lucas/adad-api)
[![Build status](https://ci.appveyor.com/api/projects/status/c44vgthqrfpubs6o?svg=true)](https://ci.appveyor.com/project/guimaraes-lucas/adad-api)
[![Coverage Status](https://coveralls.io/repos/github/guimaraes-lucas/adad-api/badge.svg?branch=master)](https://coveralls.io/github/guimaraes-lucas/adad-api?branch=master)

# O que é esse projeto?

Uma api de bloco de notas feita com [Rails](https://rubyonrails.org).

# Instalação e execução

Existem duas maneiras de execução a primeira é utilizando o [Docker](https://docs.docker.com/docker-for-windows/install/), com o mesmo executando na maquina, utilize o seguinte comando:

```shell
docker build -t adad-api .
docker run -it -p 3000:3000 --name adad-api adad-api
```

# Endpoints

| Helper                                                       | HTTP Verb | Path                              | Controller#Action          |
| ------------------------------------------------------------ | --------- | --------------------------------- | -------------------------- |
| [Path](https://3000-b27948f6-c221-4f9f-a009-83045d7ee4ca.ws-us02.gitpod.io/info/routes#) / [Url](https://3000-b27948f6-c221-4f9f-a009-83045d7ee4ca.ws-us02.gitpod.io/info/routes#) |           |                                   |                            |
| attendance_diaries_path                                      | GET       | /attendance_diaries(.:format)     | attendance_diaries#index   |
|                                                              | POST      | /attendance_diaries(.:format)     | attendance_diaries#create  |
| attendance_diary_path                                        | GET       | /attendance_diaries/:id(.:format) | attendance_diaries#show    |
|                                                              | PATCH     | /attendance_diaries/:id(.:format) | attendance_diaries#update  |
|                                                              | PUT       | /attendance_diaries/:id(.:format) | attendance_diaries#update  |
|                                                              | DELETE    | /attendance_diaries/:id(.:format) | attendance_diaries#destroy |
| lessons_path                                                 | GET       | /lessons(.:format)                | lessons#index              |
|                                                              | POST      | /lessons(.:format)                | lessons#create             |
| lesson_path                                                  | GET       | /lessons/:id(.:format)            | lessons#show               |
|                                                              | PATCH     | /lessons/:id(.:format)            | lessons#update             |
|                                                              | PUT       | /lessons/:id(.:format)            | lessons#update             |
|                                                              | DELETE    | /lessons/:id(.:format)            | lessons#destroy            |
| students_path                                                | GET       | /students(.:format)               | students#index             |
|                                                              | POST      | /students(.:format)               | students#create            |
| student_path                                                 | GET       | /students/:id(.:format)           | students#show              |
|                                                              | PATCH     | /students/:id(.:format)           | students#update            |
|                                                              | PUT       | /students/:id(.:format)           | students#update            |
|                                                              | DELETE    | /students/:id(.:format)           | students#destroy           |
| teachers_path                                                | GET       | /teachers(.:format)               | teachers#index             |
|                                                              | POST      | /teachers(.:format)               | teachers#create            |
| teacher_path                                                 | GET       | /teachers/:id(.:format)           | teachers#show              |
|                                                              | PATCH     | /teachers/:id(.:format)           | teachers#update            |
|                                                              | PUT       | /teachers/:id(.:format)           | teachers#update            |
|                                                              | DELETE    | /teachers/:id(.:format)           | teachers#destroy           |
| classrooms_path                                              | GET       | /classrooms(.:format)             | classrooms#index           |
|                                                              | POST      | /classrooms(.:format)             | classrooms#create          |
| classroom_path                                               | GET       | /classrooms/:id(.:format)         | classrooms#show            |
|                                                              | PATCH     | /classrooms/:id(.:format)         | classrooms#update          |
|                                                              | PUT       | /classrooms/:id(.:format)         | classrooms#update          |
|                                                              | DELETE    | /classrooms/:id(.:format)         | classrooms#destroy         |
| disciplines_path                                             | GET       | /disciplines(.:format)            | disciplines#index          |
|                                                              | POST      | /disciplines(.:format)            | disciplines#create         |
| discipline_path                                              | GET       | /disciplines/:id(.:format)        | disciplines#show           |
|                                                              | PATCH     | /disciplines/:id(.:format)        | disciplines#update         |
|                                                              | PUT       | /disciplines/:id(.:format)        | disciplines#update         |
|                                                              | DELETE    | /disciplines/:id(.:format)        | disciplines#destroy        |
| churches_path                                                | GET       | /churches(.:format)               | churches#index             |
|                                                              | POST      | /churches(.:format)               | churches#create            |
| church_path                                                  | GET       | /churches/:id(.:format)           | churches#show              |
|                                                              | PATCH     | /churches/:id(.:format)           | churches#update            |
|                                                              | PUT       | /churches/:id(.:format)           | churches#update            |
|                                                              | DELETE    | /churches/:id(.:format)           | churches#destroy           |
| responsibles_path                                            | GET       | /responsibles(.:format)           | responsibles#index         |
|                                                              | POST      | /responsibles(.:format)           | responsibles#create        |
| responsible_path                                             | GET       | /responsibles/:id(.:format)       | responsibles#show          |
|                                                              | PATCH     | /responsibles/:id(.:format)       | responsibles#update        |
|                                                              | PUT       | /responsibles/:id(.:format)       | responsibles#update        |
|                                                              | DELETE    | /responsibles/:id(.:format)       | responsibles#destroy       |
| events_path                                                  | GET       | /events(.:format)                 | events#index               |
|                                                              | POST      | /events(.:format)                 | events#create              |
| event_path                                                   | GET       | /events/:id(.:format)             | events#show                |
|                                                              | PATCH     | /events/:id(.:format)             | events#update              |
|                                                              | PUT       | /events/:id(.:format)             | events#update              |
|                                                              | DELETE    | /events/:id(.:format)             | events#destroy             |
