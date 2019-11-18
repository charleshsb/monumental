# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


file_tl = URI.open('https://images.unsplash.com/photo-1499634231146-3393ed854a33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80')
the_louvre = Monument.new(title: 'The Louvre', address: 'Rue de Rivoli, 75001 Paris, France', description: "The world's largest art museum and a historic monument in Paris.", price: "500 000")
the_louvre.photo.attach(io: file_tl, filename: 'the_louvre.jpg', content_type: 'image/jpg')
the_louvre.save


file_et = URI.open('https://images.unsplash.com/photo-1473205957495-db0d2dcb2a77?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
eiffel_tower = Monument.new(title: 'The Eiffel Tower', address: 'Rue de Rivoli, 75001 Paris, France', description: "A wrought-iron lattice tower on the Champ de Mars in Paris. It is the most-visited paid monument in the world.", price: "700 000")
eiffel_tower.photo.attach(io: file_et, filename: 'eiffel_tower.jpg', content_type: 'image/jpg')
eiffel_tower.save


file_vm = URI.open('https://images.unsplash.com/photo-1542622805-980533ee81ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
virgin_mary = Monument.new(title: 'Virgin Mary statue', address: 'San Cristobald Hill, Santiago de Chile, Chile', description: "One of the principal places of worship for the Catholic Church of Chile, as well as being an icon of Santiago, Chile. It is notable in particular for a large statue of the Immaculate Conception, which is located at the summit of San Cristóbal Hill, some 863 meters above sea level.", price: "200 000")
virgin_mary.photo.attach(io: file_vm, filename: 'virgin_mary.jpg', content_type: 'image/jpg')
virgin_mary.save


file_cp = URI.open('https://images.unsplash.com/photo-1542622805-980533ee81ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
central_park = Monument.new(title: 'Central Park', address: 'Manhattan, New York City, USA', description: "Central Park is an urban park in Manhattan, located between the Upper West Side and the Upper East Side. Central Park is the most visited urban park in the United States, with an estimated 37.5–38 million visitors annually, and one of the most filmed locations in the world.", price: "700 000")
central_park.photo.attach(io: file_cp, filename: 'central_park.jpg', content_type: 'image/jpg')
central_park.save

file_ys = URI.open('https://images.unsplash.com/photo-1550347778-473e0058577c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80')
yellow_stone = Monument.new(title: 'Yellowstone National Park', address: 'Yellowstone National Park, WY 82190, USA', description: "An American national park located mostly in Wyoming, with small sections in Montana and Idaho.", price: "300 000")
yellow_stone.photo.attach(io: file_ys, filename: 'yellow_stone.jpg', content_type: 'image/jpg')
yellow_stone.save


file_bp = URI.open('https://images.unsplash.com/photo-1566594918224-1bc366f40de9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
buckingham_palace = Monument.new(title: 'Buckingham Palace', address: 'Westminster, London SW1A 1AA, UK', description: "The London residence and administrative headquarters of the monarch of the United Kingdom.", price: "500 000")
buckingham_palace.photo.attach(io: file_bp, filename: 'buckingham_palace.jpg', content_type: 'image/jpg')
buckingham_palace.save


file_pv = URI.open('https://images.unsplash.com/photo-1566087247505-cd95ebd53df9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80')
palace_versailles = Monument.new(title: 'Palace of Versailles', address: "Place d'Armes, 78000 Versailles, France", description: "The principal royal residence of France from 1682, under Louis XIV, until the start of the French Revolution in 1789, under Louis XVI. In 2017 the Palace of Versailles received 7,700,000 visitors, making it the second-most visited monument in Paris region.", price: "800 000")
palace_versailles.photo.attach(io: file_pv, filename: 'palace_versailles.jpg', content_type: 'image/jpg')
palace_versailles.save



file_tm = URI.open('https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80')
taj_mahal = Monument.new(title: 'Taj Mahal', address: "Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India", description: "An ivory-white marble Islamic mausoleum on the south bank of the Yamuna river in the Indian city of Agra.", price: "700 000")
taj_mahal.photo.attach(io: file_tm, filename: 'taj_mahal.jpg', content_type: 'image/jpg')
taj_mahal.save



file_cr = URI.open('https://images.unsplash.com/photo-1551983156-7b02c74d7fd6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
cristo_redentor = Monument.new(title: 'Cristo Redentor', address: "Corcovado Mountain, Tijuca Forest National Park, Rio de Janeiro, Brazil", description: "An Art Deco statue of Jesus Christ in Rio de Janeiro, created by French sculptor Paul Landowski. The statue weighs 635 metric tons (625 long, 700 short tons), and is located at the peak of the 700-metre (2,300 ft) Corcovado mountain, the statue has become a cultural icon of both Rio de Janeiro and Brazil, and is listed as one of the New7Wonders of the World.", price: "600 000")
cristo_redentor.photo.attach(io: file_cr, filename: 'cristo_redentor.jpg', content_type: 'image/jpg')
cristo_redentor.save


file_vg = URI.open('http://bindies.fr/wp-content/uploads/2016/11/LEWAGON_20151210_HD-1.jpg')
villa_gaudelet = Monument.new(title: 'Villa Gaudelet', address: "16 Villa Gaudelet, 75011 Paris, France", description: "Le Wagon is ranked as the world's best coding bootcamp. The Villa Gaudelet is the headquarter of ", price: "600 000")
villa_gaudelet.photo.attach(io: file_vg, filename: 'villa_gaudelet.jpg', content_type: 'image/jpg')
villa_gaudelet.save








