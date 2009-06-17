Factory.define :task do |f|
  f.name "my task"
  f.points 1
  f.association :status
end

Factory.define :status do |f|
  f.status "Active"
end
