require 'active_record'
require 'yaml'
require 'logger'

task :default => :environment

task :environment do
  ActiveRecord::Base.logger = Logger.new(File.open('log/application.log', 'a'))
end

