SurfSchool.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
school01 = SurfSchool.create!(name: 'Nomad Surf School', description: 'Ecole de surf au Cap-Ferret', address: '5 Rue des Bernaches, 33970 Lège-Cap-Ferret', website: 'https://nomadsurf.net/',
phone_number: '+33660876290', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, 09:00–17:00, saturday, 09:00–17:00, sunday, 09:00–17:00',
meeting_point: 'At School', lesson_type: 'Inside Water', lesson_price_tendancy: '30', rental_price_tendancy: '10', image_url: '')

school02 = SurfSchool.create!(name: 'Cap Ferret Surf School', description: 'Ecole de surf au Cap-Ferret', address: 'Plage du Truc Vert, 33970 Lège-Cap-Ferret', website: 'https://capferretsurfschool.com/',
phone_number: '+33698712033', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Outside Water',
lesson_price_tendancy: '25', rental_price_tendancy: '15', image_url: '')

school03 = SurfSchool.create!(name: 'CAPSURF', description: 'Ecole de surf à Hossegor', address: 'Plage Notre Dame, BP28, 40130 Capbreton', website: 'http://www.capsurf.com/',
phone_number: '+33603634148', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'At School', lesson_type: 'Inside Water',
lesson_price_tendancy: '40', rental_price_tendancy: '20', image_url: 'images-school/capsurf.jpg')

school04 = SurfSchool.create!(name: 'Ecole de Surf des Estagnots', description: 'Ecole de surf à Hossegor', address: 'Plage des estagnots, 40510 Seignosse', website: 'https://www.ecoledesurfestagnots.com/',
phone_number: '+33558417779', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, close, saturday, 09:00–17:00, sunday, 09:00–17:00', meeting_point: 'At School', lesson_type: 'Inside Water',
lesson_price_tendancy: '30', rental_price_tendancy: '10', image_url: 'images-school/estagnots.jpg')

school05 = SurfSchool.create!(name: '29 Hood École de surf Pors Carn - La Torche', description: 'Ecole de surf à La Toche', address: '433 Rue du Musée de la Préhistoire, 29760 Penmarch', website: 'http://29hood.com/',
phone_number: '+33787515647', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 10:30–18:00, sunday, 10:30–18:00', meeting_point: 'On the Spot', lesson_type: 'Outside Water',
lesson_price_tendancy: '35', rental_price_tendancy: '15', image_url: '')

school06 = SurfSchool.create!(name: 'Surf-attitude', description: 'Ecole de surf à La Torche', address: 'pointe de la Torche, 29120 Plomeur', website: 'http://www.surf-attitude.com/',
phone_number: '+33628351080', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, 09:00–17:00, saturday, 09:00–17:00, sunday, 09:00–17:00', meeting_point: 'At School', lesson_type: 'Outside Water',
lesson_price_tendancy: '30', rental_price_tendancy: '10', image_url: '')

school07 = SurfSchool.create!(name: 'école de surf du Léon à Moguériec', description: 'Ecole de surf à La Mauvaise Grève', address: '170 Pointe de Beg Tanguy, 29250 Sibiril', website: 'http://ecole-surf-leon.com/',
phone_number: '+33666463049', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, 09:00–17:00, saturday, 09:00–17:00, sunday, 09:00–17:00', meeting_point: 'At School', lesson_type: 'Outside Water',
lesson_price_tendancy: '25', rental_price_tendancy: '15', image_url: '')

school08 = SurfSchool.create!(name: 'SurfIn Pourville', description: 'Ecole de surf en Normandie', address: 'Rue du Casino, 76550 Hautot-sur-Mer', website: 'http://www.surfin-pourville.com/',
phone_number: '+33630590276', opening_hours: 'monday, close, tuesday, 09:30–18:00, wednedsay, 09:30–18:00, thursday, 09:30–18:00, friday, 09:30–18:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
lesson_price_tendancy: '50', rental_price_tendancy: '30', image_url: '')

school09 = SurfSchool.create!(name: 'voiles de nacre', description: 'Ecole de surf en Normandie', address: '60 Rue du Général Leclerc, 14830 Langrune-sur-Mer', website: 'http://www.voilesdenacre.fr/',
phone_number: '+33231967784', opening_hours: 'monday, 09:00–17:00, tuesday, 09:00–17:00, wednedsay, 09:00–17:00, thursday, 09:00–17:00, friday, 09:00–17:00, saturday, 09:00–17:00, sunday, 09:00–17:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
lesson_price_tendancy: '40', rental_price_tendancy: '20', image_url: '')

school10 = SurfSchool.create!(name: 'Palawaï Surf School', description: 'Ecole de surf à Palavas-les-Flots', address: '37 Boulevard Sarrail, 34250 Palavas-les-Flots', website: 'http://www.palawaisurf-school.com/',
phone_number: '+33649868332', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'At School', lesson_type: 'Inside Water',
lesson_price_tendancy: '40', rental_price_tendancy: '20', image_url: '')

school11 = SurfSchool.create!(name: 'JEANNOT SURF COACHING', description: 'Ecole de surf à Six-Fours-les-Plages', address: '98 Carraire de Sauviou, 83140 Six-Fours-les-Plages', website: 'https://jeannot-surf-coaching-cours-de-surf.business.site/',
phone_number: '+33634138965', opening_hours: 'monday, 08:00–19:00, tuesday, 08:00–19:00, wednedsay, 08:00–19:00, thursday, 08:00–19:00, friday, 08:00–19:00, saturday, 08:00–19:00, sunday, 08:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
lesson_price_tendancy: '20', rental_price_tendancy: '5', image_url: '')

school12 = SurfSchool.create!(name: 'Gas Surf Center', description: 'Ecole de surf à La Ciotat', address: 'Avenue des Vieux Moulins, 13600 La Ciotat', website: 'http://www.manipura.com/club/',
phone_number: '+33616636286', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
lesson_price_tendancy: '40', rental_price_tendancy: '30', image_url: '')

school13 = SurfSchool.create!(name: 'Ecole de surf Messanges Sud', description: 'Ecole de surf à Messanges', address: 'Route de la Plage S, 40660 Messanges', website: 'https://www.surfmessanges-sud.com/',
phone_number: '+33677510699', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'At School', lesson_type: 'Inside Water',
lesson_price_tendancy: '40', rental_price_tendancy: '30', image_url: 'images-school/vieux_boucau_surf_club.jpg')

school14 = SurfSchool.create!(name: 'Messanges Surf School', description: 'Ecole de surf à Messanges', address: 'Route de la Plage S, 40660 Messanges', website: 'https://www.messanges-surf-school.com/',
phone_number: '+33677487385', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Outside Water',
lesson_price_tendancy: '50', rental_price_tendancy: '40', image_url: 'images-school/messanges_surf_school.jpg')

school15 = SurfSchool.create!(name: 'Vieux-Boucau Surf Club', description: 'Ecole de surf à Messanges', address: 'Plage des Sablères, Rue de lErg, 40480 Vieux-Boucau-les-Bains', website: 'http://www.surfclub-vieuxboucau.com/',
phone_number: '+33558482933', opening_hours: 'monday, 09:00–19:00, tuesday, 09:00–19:00, wednedsay, 09:00–19:00, thursday, 09:00–19:00, friday, 09:00–19:00, saturday, 09:00–19:00, sunday, 09:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Outside Water',
lesson_price_tendancy: '30', rental_price_tendancy: '20', image_url: 'images-school/gas_surf_center.jpg')

school16 = SurfSchool.create!(name: 'Dreamlandes surfschool', description: 'Ecole de surf à Messanges', address: '45 Avenue de la Plage, 40480 Vieux-Boucau-les-Bains', website: 'https://www.dreamlandes.fr/',
phone_number: '+33619409804', opening_hours: 'monday, 08:00–19:30, tuesday, 08:00–19:30, wednedsay, 08:00–19:30, thursday, 08:00–19:30, friday, 08:00–19:30, saturday, 08:00–19:30, sunday, 08:00–19:30', meeting_point: 'At School', lesson_type: 'Outside Water',
lesson_price_tendancy: '35', rental_price_tendancy: '25', image_url: 'images-school/ecole_de_surf_messanges_sud.jpg')

school17 = SurfSchool.create!(name: 'Alternative Surf School - école de surf', description: 'Ecole de surf à Messanges', address: 'Résidence la plage, Plage Sud, Rue des Goélands, 40480 Vieux-Boucau-les-Bains', website: 'http://www.alternativesurfschool.com/',
phone_number: '+33603060642', opening_hours: 'monday, 10:00–19:00, tuesday, 10:00–19:00, wednedsay, 10:00–19:00, thursday, 10:00–19:00, friday, 10:00–19:00, saturday, 10:00–19:00, sunday, 10:00–19:00', meeting_point: 'On the Spot', lesson_type: 'Inside Water',
lesson_price_tendancy: '45', rental_price_tendancy: '35', image_url: 'images-school/dreamlandes_surfschool.jpg')

school18 = SurfSchool.create!(name: 'SURF UNIVERS', description: 'Ecole de surf à Messanges', address: 'Résidence la plage, Parking lEstacade, Rue des Goélands, 40480 Vieux-Boucau-les-Bains', website: 'http://www.surf-vieuxboucau.com/',
phone_number: '+33558482851', opening_hours: 'monday, 09:00–20:00, tuesday, 09:00–20:00, wednedsay, 09:00–20:00, thursday, 09:00–20:00, friday, 09:00–20:00, saturday, 09:00–20:00, sunday, 09:00–20:00', meeting_point: 'At School', lesson_type: 'Inside Water',
lesson_price_tendancy: '40', rental_price_tendancy: '30', image_url: 'images-school/alternative_surf_school.jpg')
