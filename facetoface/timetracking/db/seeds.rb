# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create name: "Moloko", description: "Suena a africano, pero son un grupo sueco."
Project.create name: "Hola", description: "Que tal. Yo aquí, escribiendo, ya sabes"
Project.create name: "Pues nada", description: "Chica, lo que te decia"

100. times do |num|
	Project.create name: "Pedro", description: "Que no es Almodovar"
end