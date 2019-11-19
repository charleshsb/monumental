# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting seed"
Monument.destroy_all
User.destroy_all

charles = User.create(email: "charles@gmail.com", password: "123456")
sibylle = User.create(email: "sibylle@gmail.com", password: "123456")

photos_array = []
photos_array << URI.open('https://www.novastan.org/fr/wp-content/uploads/sites/4/2018/03/Image1-1.jpg')
photos_array << URI.open('https://www.novastan.org/fr/wp-content/uploads/sites/4/2018/03/Image1-1.jpg')
photos_array << URI.open('https://www.novastan.org/fr/wp-content/uploads/sites/4/2018/03/Image1-1.jpg')

the_louvre = Monument.new(user: charles, title: 'The Louvre', address: 'Rue de Rivoli, 75001 Paris, France', description: "The world's largest art museum and a historic monument in Paris.", price: 500000)
photos_array.each_with_index do |photo, index|
  the_louvre.photos.attach(io: photo, filename: "the_louvre_#{index}.jpg", content_type: 'image/jpg')
end
the_louvre.save

photos_array = []
photos_array << URI.open('https://www.toureiffel.paris/sites/default/files/styles/1440x810/public/2017-10/monument-landing-header-bg_0.jpg?itok=_dSLLBlZ')
eiffel_tower = Monument.new(user: charles, title: 'The Eiffel Tower', address: 'Rue de Rivoli, 75001 Paris, France', description: "A wrought-iron lattice tower on the Champ de Mars in Paris. It is the most-visited paid monument in the world.", price: 700000)
photos_array.each_with_index do |photo, index|
eiffel_tower.photos.attach(io: photo, filename: "eiffel_tower_#{index}.jpg", content_type: 'image/jpg')
end
eiffel_tower.save


photos_array = []
photos_array << URI.open('https://pic.clubic.com/v1/images/1720750/raw')
notre_dame = Monument.new(user: charles, title: 'Notre Dame de Paris', address: '6 place Jean Paul II Prv Notre Dame, 75004 Paris, France', description: "A medieval Catholic cathedral on the Île de la Cité in the 4th arrondissement of Paris. The cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture.", price: 200000)
photos_array.each_with_index do |photo, index|
notre_dame.photos.attach(io: photo, filename: "notre_dame_#{index}.jpg", content_type: 'image/jpg')
end
notre_dame.save


photos_array = []
photos_array <<  URI.open('https://frenchdistrict.com/new-york/wp-content/uploads/sites/3/2015/10/10-secrets-central-park-histoire-une.jpg')
central_park = Monument.new(user: charles, title: 'Central Park', address: 'Manhattan, New York City, USA', description: "Central Park is an urban park in Manhattan, located between the Upper West Side and the Upper East Side. Central Park is the most visited urban park in the United States, with an estimated 37.5–38 million visitors annually, and one of the most filmed locations in the world.", price: 700000)
photos_array.each_with_index do |photo, index|
central_park.photos.attach(io: photo, filename: "central_park_#{index}.jpg", content_type: 'image/jpg')
end
central_park.save

photos_array = []
photos_array <<  URI.open('https://www.yellowstonepark.com/.image/t_share/MTU0ODMzMDA2MjMyNjEwODAx/ys-grand-prismatic_tamtroyhendrickson_700.jpg')
yellow_stone = Monument.new(user: sibylle, title: 'Yellowstone National Park', address: 'Yellowstone National Park, WY 82190, USA', description: "An American national park located mostly in Wyoming, with small sections in Montana and Idaho.", price: 300000)
photos_array.each_with_index do |photo, index|
yellow_stone.photos.attach(io: photo, filename: "yellow_stone_#{index}.jpg", content_type: 'image/jpg')
end
yellow_stone.save


photos_array = []
photos_array <<  URI.open('https://cdn-media.rtl.fr/online/image/2019/0712/7798026590_une-vue-de-buckingham-palace-le-25-mai-2010-illustration.jpg')
buckingham_palace = Monument.new(user: sibylle, title: 'Buckingham Palace', address: 'Westminster, London SW1A 1AA, UK', description: "The London residence and administrative headquarters of the monarch of the United Kingdom.", price: 500000)
photos_array.each_with_index do |photo, index|
buckingham_palace.photos.attach(io: photo, filename: "buckingham_palace_#{index}.jpg", content_type: 'image/jpg')
end
buckingham_palace.save


photos_array = []
photos_array << URI.open('http://www.chateauversailles.fr/sites/default/files/styles/visuel_principal_home/public/visuels_principaux/acceuil_tg_ete.jpg?itok=25UY46TK')
palace_versailles = Monument.new(user: sibylle, title: 'Palace of Versailles', address: "Place d'Armes, 78000 Versailles, France", description: "The principal royal residence of France from 1682, under Louis XIV, until the start of the French Revolution in 1789, under Louis XVI. In 2017 the Palace of Versailles received 7,700,000 visitors, making it the second-most visited monument in Paris region.", price: 800000)
photos_array.each_with_index do |photo, index|
palace_versailles.photos.attach(io: photo, filename: "palace_versailles_#{index}.jpg", content_type: 'image/jpg')
end
palace_versailles.save



photos_array = []
photos_array << URI.open('http://blog.philibertvoyages.fr/wp-content/uploads/2017/04/Taj-mahal-istock-JulieanneBirch.jpg')
taj_mahal = Monument.new(user: sibylle, title: 'Taj Mahal', address: "Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India", description: "An ivory-white marble Islamic mausoleum on the south bank of the Yamuna river in the Indian city of Agra.", price: 700000)
photos_array.each_with_index do |photo, index|
taj_mahal.photos.attach(io: photo, filename: "taj_mahal_#{index}.jpg", content_type: 'image/jpg')
end
taj_mahal.save



photos_array = []
photos_array << URI.open('https://www.boqnews.com/wp-content/uploads/2015/06/cristo.jpg')
cristo_redentor = Monument.new(user: sibylle, title: 'Cristo Redentor', address: "Corcovado Mountain, Tijuca Forest National Park, Rio de Janeiro, Brazil", description: "An Art Deco statue of Jesus Christ in Rio de Janeiro, created by French sculptor Paul Landowski. The statue weighs 635 metric tons (625 long, 700 short tons), and is located at the peak of the 700-metre (2,300 ft) Corcovado mountain, the statue has become a cultural icon of both Rio de Janeiro and Brazil, and is listed as one of the New7Wonders of the World.", price: 600000)
photos_array.each_with_index do |photo, index|
cristo_redentor.photos.attach(io: photo, filename: "cristo_redentor_#{index}.jpg", content_type: 'image/jpg')
end
cristo_redentor.save


photos_array = []
photos_array << URI.open('http://bindies.fr/wp-content/uploads/2016/11/LEWAGON_20151210_HD-1.jpg')
villa_gaudelet = Monument.new(user: sibylle, title: 'Villa Gaudelet', address: "16 Villa Gaudelet, 75011 Paris, France", description: "Le Wagon is ranked as the world's best coding bootcamp. The Villa Gaudelet is the headquarter of ", price: 600000)
photos_array.each_with_index do |photo, index|
villa_gaudelet.photos.attach(io: photo, filename: "villa_gaudelet_#{index}.jpg", content_type: 'image/jpg')
end
villa_gaudelet.save



puts "finished seed"




