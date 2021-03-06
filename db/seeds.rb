# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.delete_all
Task.delete_all
Person.delete_all


Event.create(id: 300, name: 'Approaching Fire', priority: 1)
task_one = Task.find_or_create_by_name(id: 10, name: 'Fill the gutters with water', event_id: 300)
Person.create(id: 1, name: 'Julian', email: 'jkelabora@dius.com.au', task_id: 10)


Event.create(id: 500, name: 'Gale Force Winds', priority: 2)
task_two = Task.find_or_create_by_name(id: 20, name: 'Secure loose items outside', event_id: 500)
Person.create(id: 2, name: 'Frank', email: 'randombloke95@gmail.com', task_id: 20)


p = Plan.find_or_create_by_name(name: 'Clarke Family Plan', postcode: 3113)
p.tasks << task_one
p.tasks << task_two

