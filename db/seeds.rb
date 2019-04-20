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

User.create(login: 'admin', name: 'System Administrator', password: 'admin', password_confirmation: 'admin', role_id: 1)
