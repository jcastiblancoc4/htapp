# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Bank.create!(name: "Bancolombia")
Bank::Accoun.create!(number: "12345678", bank: Bank.last)
Supplier.create!(name: "supplier uno", nit: "12345678-2", name_person_contact: "juan pablo", phone_person_contact: "3005593283", accoun: Bank::Accoun.last)
Supplier.create!(name: "supplier uno", nit: "12345678-2", name_person_contact: "juan pablo", phone_person_contact: "3005593283", accoun: Bank::Accoun.new(number: "123456789", bank: Bank.last))