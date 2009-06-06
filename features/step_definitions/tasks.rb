Given /^there is a task "([^\"]*)"$/ do |task_name|
  @task = Task.create!(:name => task_name)
end

