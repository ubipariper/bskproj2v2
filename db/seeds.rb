# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: 'Admin', role_type: 1)
Role.create(name: 'Manager', role_type: 2)
Role.create(name: 'Product Owner', role_type: 3)
Role.create(name: 'Scrum Master', role_type: 4)
Role.create(name: 'Developer', role_type: 5)
Role.create(name: 'Guest', role_type: 6)

Sprint.create(name: 'Backlog', date_start: DateTime.now, date_end: DateTime.now)
Sprint.create(name: 'Temporary', date_start: 7.days.ago, date_end: 7.days.since)

Sprint.create(name: 'S1', date_start: 49.days.ago, date_end: 35.days.ago)
Sprint.create(name: 'S2', date_start: 35.days.ago, date_end: 21.days.ago)
Sprint.create(name: 'S3', date_start: 21.days.ago, date_end: 7.days.ago)




User.create(login: 'admin', name: 'System Administrator', password: 'admin',
            password_confirmation: 'admin', role_id: 1)

User.create(login: 'null', name: 'No Owner', password: 'null',
            password_confirmation: 'null', role_id: 6)

Task.create(name: 'Sample Task 1', description: 'Comment task here', points: 1,
            priority: 0, state: 0, user_id: 2,
            sprint_id: Sprint.find_by(name: 'Backlog').id)
Task.create(name: 'Sample Task 2', description: 'Comment task here', points: 2,
            priority: 1, state: 1, user_id: 2,
            sprint_id: Sprint.find_by(name: 'Backlog').id)


Task.create(name: 'Sample Task 1', description: 'Comment task here', points: 3,
            priority: 0, state: 0, user_id: 2,
            sprint_id: Sprint.find_by(name: 'Temporary').id)
Task.create(name: 'Sample Task 2', description: 'Comment task here', points: 5,
            priority: 1, state: 1, user_id: 2,
            sprint_id: Sprint.find_by(name: 'S1').id)

