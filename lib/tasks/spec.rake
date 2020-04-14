# frozen_string_literal: true

desc 'Run all app specs'
task :spec do
  require 'rspec/core'
  code = RSpec::Core::Runner.run(
    ['./spec'],
    $stderr, $stdout
  )
  exit(code) unless code.zero?
end
