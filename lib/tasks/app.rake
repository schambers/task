namespace :app do
  task :seed => :environment do
    Rake::Task[ "db:migrate" ].execute
    DataSeeder.seed
  end
end
