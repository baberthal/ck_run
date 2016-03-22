require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rake/extensiontask'

task build: :compile

Rake::ExtensionTask.new('ck_run') do |ext|
  ext.lib_dir = 'lib/ck_run'
end

task default: [:clobber, :compile, :spec]
