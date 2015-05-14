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

Entry.create hours: 5, minutes: 50, comments: "No se, estoy aqui probando, tampoco me leas mucho", project_id: 1
Entry.create hours: 3, minutes: 25, comments: "Bla, bla, bla. Caca, culo, pedo pis.", project_id: 1
Entry.create hours: 0, minutes: 13, comments: "Pues mira, solo 13 minutos, no me he esmerado mucho", project_id: 2
Entry.create hours: 15, minutes: 20, comments: "Claro, te dejas todo para ultima hora y mira lo que pasa", project_id: 2
