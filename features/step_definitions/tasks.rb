Given /^there is a task "([^\"]*)" worth "([^\"]*)" points$/ do |task_name, task_points|
  @task = Task.create!(:name => task_name, :points => task_points)
end
