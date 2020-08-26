# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
school01 = School.new(school_name: 'Nomad Surf School', description: 'Ecole de surf au Cap-Ferret', address: '5 Rue des Bernaches, 33970 Lège-Cap-Ferret', website: 'https://nomadsurf.net/',
phone_number: '+33660876290', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, 09:00–17:00, saturday, 09:00–17:00, sunday, 09:00–17:00',
meeting_point: 'At School', lesson_type: 'Inside Water', school_price_tendancy: '30', rental_price_tendancy: '10')

school02 = School.new(school_name: 'Cap Ferret Surf School', description: 'Ecole de surf au Cap-Ferret', address: 'Plage du Truc Vert, 33970 Lège-Cap-Ferret', website: 'https://capferretsurfschool.com/',
phone_number: '+33698712033', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Outside Water',
school_price_tendancy: '25', rental_price_tendancy: '15')

school03 = School.new(school_name: 'CAPSURF', description: 'Ecole de surf à Hossegor', address: 'Plage Notre Dame, BP28, 40130 Capbreton', website: 'http://www.capsurf.com/',
phone_number: '+33603634148', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'At School', lesson_type: 'Inside Water',
school_price_tendancy: '40', rental_price_tendancy: '20')

school04 = School.new(school_name: 'Ecole de Surf des Estagnots', description: 'Ecole de surf à Hossegor', address: 'Plage des estagnots, 40510 Seignosse', website: 'https://www.ecoledesurfestagnots.com/',
phone_number: '+33558417779', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, close, saturday, 09:00–17:00, sunday, 09:00–17:00', meeting_point: 'At School', lesson_type: 'Inside Water',
school_price_tendancy: '30', rental_price_tendancy: '10')

school05 = School.new(school_name: '29 Hood École de surf Pors Carn - La Torche', description: 'Ecole de surf à La Toche', address: '433 Rue du Musée de la Préhistoire, 29760 Penmarch', website: 'http://29hood.com/',
phone_number: '+33787515647', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 10:30–18:00, sunday, 10:30–18:00', meeting_point: 'On the Spot', lesson_type: 'Outside Water',
school_price_tendancy: '35', rental_price_tendancy: '15')

school06 = School.new(school_name: 'Surf-attitude', description: 'Ecole de surf à La Torche', address: 'pointe de la Torche, 29120 Plomeur', website: 'http://www.surf-attitude.com/',
phone_number: '+33628351080', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, 09:00–17:00, saturday, 09:00–17:00, sunday, 09:00–17:00', meeting_point: 'At School', lesson_type: 'Outside Water',
school_price_tendancy: '30', rental_price_tendancy: '10')

school07 = School.new(school_name: 'école de surf du Léon à Moguériec', description: 'Ecole de surf à La Mauvaise Grève', address: '170 Pointe de Beg Tanguy, 29250 Sibiril', website: 'http://ecole-surf-leon.com/',
phone_number: '+33666463049', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, 09:00–17:00, saturday, 09:00–17:00, sunday, 09:00–17:00', meeting_point: 'At School', lesson_type: 'Outside Water',
school_price_tendancy: '25', rental_price_tendancy: '15')

school08 = School.new(school_name: 'SurfIn Pourville', description: 'Ecole de surf en Normandie', address: 'Rue du Casino, 76550 Hautot-sur-Mer', website: 'http://www.surfin-pourville.com/',
phone_number: '+33630590276', opening_hours: 'monday, close, tuesday, 09:30–18:00, wednedsay, 09:30–18:00, thursday, 09:30–18:00, friday, 09:30–18:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
school_price_tendancy: '50', rental_price_tendancy: '30')

school09 = School.new(school_name: 'voiles de nacre', description: 'Ecole de surf en Normandie', address: '60 Rue du Général Leclerc, 14830 Langrune-sur-Mer', website: 'http://www.voilesdenacre.fr/',
phone_number: '+33231967784', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, 09:00–17:00, saturday, 09:00–17:00, sunday, 09:00–17:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
school_price_tendancy: '40', rental_price_tendancy: '20')

school10 = School.new(school_name: 'Palawaï Surf School', description: 'Ecole de surf à Palavas-les-Flots', address: '37 Boulevard Sarrail, 34250 Palavas-les-Flots', website: 'http://www.palawaisurf-school.com/',
phone_number: '+33649868332', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'At School', lesson_type: 'Inside Water',
school_price_tendancy: '40', rental_price_tendancy: '20')

school11 = School.new(school_name: 'JEANNOT SURF COACHING', description: 'Ecole de surf à Six-Fours-les-Plages', address: '98 Carraire de Sauviou, 83140 Six-Fours-les-Plages', website: 'https://jeannot-surf-coaching-cours-de-surf.business.site/',
phone_number: '+33634138965', opening_hours: 'monday, 08:00–19:00, tuesday, 08:00–19:00, wednedsay, 08:00–19:00, thursday, 08:00–19:00, friday, 08:00–19:00, saturday, 08:00–19:00, sunday, 08:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
school_price_tendancy: '20', rental_price_tendancy: '5')

school12 = School.new(school_name: 'Gas Surf Center', description: 'Ecole de surf à La Ciotat', address: 'Avenue des Vieux Moulins, 13600 La Ciotat', website: 'http://www.manipura.com/club/',
phone_number: '+33616636286', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
school_price_tendancy: '40', rental_price_tendancy: '30')
