# frozen_string_literal: true

namespace :test do
  desc 'Runs RuboCop on specified directories'
  RuboCop::RakeTask.new(:rubocop) do |_task|
    require 'rubocop/rake_task'
  end
end
