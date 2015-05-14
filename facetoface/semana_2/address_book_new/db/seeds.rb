# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contact.create name: "Perico", address: "Calle El De Los Palotes"
Contact.create name: "Juan", address: "Avenida Y Medio"
Contact.create name: "Susanita", address: "Plaza Tiene Un Raton"
Contact.create name: "Ines", address: "Calle Mas Seca Que Su Ojo"

Phone.create contact_id: 1, phone_number: 666666666, description: "Telefono del diablo"
Phone.create contact_id: 1, phone_number: 765849908, description: "Telefono de la esperanza"
Phone.create contact_id: 2, phone_number: 839509123, description: "Telefono de tu casa"
Phone.create contact_id: 2, phone_number: 758938049, description: "Telefonazo mazo guapo"
Phone.create contact_id: 3, phone_number: 384958093, description: "Telefono movil viejo"
Phone.create contact_id: 3, phone_number: 374892879, description: "Telefonito bonito"
Phone.create contact_id: 4, phone_number: 475683993, description: "Telefonaso loco"
Phone.create contact_id: 4, phone_number: 374672368, description: "Teletienda"
Phone.create contact_id: 4, phone_number: 475628437, description: "Teleteletelefoooonoo"

Email.create contact_id: 1, email_address: "manuela_tequiero@gmail.com", description: "Mail de mi amor"
Email.create contact_id: 1, email_address: "holasoyyo@mimail.es", description: "Mi mail to chulo"
Email.create contact_id: 2, email_address: "holasoyedufeliznaviad@hotmail.com", description: "Email viejo"
Email.create contact_id: 2, email_address: "nomellamoedu@gmail.com", description: "Email nuevo"
Email.create contact_id: 3, email_address: "setasyporros@drogas.com", description: "Distribuidor de confianza"
Email.create contact_id: 3, email_address: "compras@carrefour.com", description: "Compras a domicilio"
Email.create contact_id: 4, email_address: "tetasyculosycaca@sioque.com", description: "No se"