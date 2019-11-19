# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting seed"
# User.destroy_all
Monument.destroy_all

charles = User.create(email: "charles@gmail.com", password: "123456")
sibylle = User.create(email: "sibylle@gmail.com", password: "123456")

file_tl = URI.open('https://www.novastan.org/fr/wp-content/uploads/sites/4/2018/03/Image1-1.jpg')
the_louvre = Monument.new(user: charles, title: 'The Louvre', address: 'Rue de Rivoli, 75001 Paris, France', description: "The world's largest art museum and a historic monument in Paris.", price: 500000)
the_louvre.photo.attach(io: file_tl, filename: 'the_louvre.jpg', content_type: 'image/jpg')
the_louvre.save


file_et = URI.open('https://www.toureiffel.paris/sites/default/files/styles/1440x810/public/2017-10/monument-landing-header-bg_0.jpg?itok=_dSLLBlZ')
eiffel_tower = Monument.new(user: charles, title: 'The Eiffel Tower', address: 'Rue de Rivoli, 75001 Paris, France', description: "A wrought-iron lattice tower on the Champ de Mars in Paris. It is the most-visited paid monument in the world.", price: 700000)
eiffel_tower.photo.attach(io: file_et, filename: 'eiffel_tower.jpg', content_type: 'image/jpg')
eiffel_tower.save


file_nd = URI.open('https://pic.clubic.com/v1/images/1720750/raw')
notre_dame = Monument.new(user: charles, title: 'Notre Dame de Paris', address: '6 place Jean Paul II Prv Notre Dame, 75004 Paris, France', description: "A medieval Catholic cathedral on the Île de la Cité in the 4th arrondissement of Paris. The cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture.", price: 200000)
notre_dame.photo.attach(io: file_nd, filename: 'notre_dame.jpg', content_type: 'image/jpg')
notre_dame.save


file_cp = URI.open('https://frenchdistrict.com/new-york/wp-content/uploads/sites/3/2015/10/10-secrets-central-park-histoire-une.jpg')
central_park = Monument.new(user: charles, title: 'Central Park', address: 'Manhattan, New York City, USA', description: "Central Park is an urban park in Manhattan, located between the Upper West Side and the Upper East Side. Central Park is the most visited urban park in the United States, with an estimated 37.5–38 million visitors annually, and one of the most filmed locations in the world.", price: 700000)
central_park.photo.attach(io: file_cp, filename: 'central_park.jpg', content_type: 'image/jpg')
central_park.save

file_ys = URI.open('https://www.yellowstonepark.com/.image/t_share/MTU0ODMzMDA2MjMyNjEwODAx/ys-grand-prismatic_tamtroyhendrickson_700.jpg')
yellow_stone = Monument.new(user: sibylle, title: 'Yellowstone National Park', address: 'Yellowstone National Park, WY 82190, USA', description: "An American national park located mostly in Wyoming, with small sections in Montana and Idaho.", price: 300000)
yellow_stone.photo.attach(io: file_ys, filename: 'yellow_stone.jpg', content_type: 'image/jpg')
yellow_stone.save


file_bp = URI.open('https://cdn-media.rtl.fr/online/image/2019/0712/7798026590_une-vue-de-buckingham-palace-le-25-mai-2010-illustration.jpg')
buckingham_palace = Monument.new(user: sibylle, title: 'Buckingham Palace', address: 'Westminster, London SW1A 1AA, UK', description: "The London residence and administrative headquarters of the monarch of the United Kingdom.", price: 500000)
buckingham_palace.photo.attach(io: file_bp, filename: 'buckingham_palace.jpg', content_type: 'image/jpg')
buckingham_palace.save


file_pv = URI.open('http://www.chateauversailles.fr/sites/default/files/styles/visuel_principal_home/public/visuels_principaux/acceuil_tg_ete.jpg?itok=25UY46TK')
palace_versailles = Monument.new(user: sibylle, title: 'Palace of Versailles', address: "Place d'Armes, 78000 Versailles, France", description: "The principal royal residence of France from 1682, under Louis XIV, until the start of the French Revolution in 1789, under Louis XVI. In 2017 the Palace of Versailles received 7,700,000 visitors, making it the second-most visited monument in Paris region.", price: 800000)
palace_versailles.photo.attach(io: file_pv, filename: 'palace_versailles.jpg', content_type: 'image/jpg')
palace_versailles.save



file_tm = URI.open('http://blog.philibertvoyages.fr/wp-content/uploads/2017/04/Taj-mahal-istock-JulieanneBirch.jpg')
taj_mahal = Monument.new(user: sibylle, title: 'Taj Mahal', address: "Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India", description: "An ivory-white marble Islamic mausoleum on the south bank of the Yamuna river in the Indian city of Agra.", price: 700000)
taj_mahal.photo.attach(io: file_tm, filename: 'taj_mahal.jpg', content_type: 'image/jpg')
taj_mahal.save



file_cr = URI.open('https://www.boqnews.com/wp-content/uploads/2015/06/cristo.jpg')
cristo_redentor = Monument.new(user: sibylle, title: 'Cristo Redentor', address: "Corcovado Mountain, Tijuca Forest National Park, Rio de Janeiro, Brazil", description: "An Art Deco statue of Jesus Christ in Rio de Janeiro, created by French sculptor Paul Landowski. The statue weighs 635 metric tons (625 long, 700 short tons), and is located at the peak of the 700-metre (2,300 ft) Corcovado mountain, the statue has become a cultural icon of both Rio de Janeiro and Brazil, and is listed as one of the New7Wonders of the World.", price: 600000)
cristo_redentor.photo.attach(io: file_cr, filename: 'cristo_redentor.jpg', content_type: 'image/jpg')
cristo_redentor.save


file_vg = URI.open('http://bindies.fr/wp-content/uploads/2016/11/LEWAGON_20151210_HD-1.jpg')
villa_gaudelet = Monument.create(user: sibylle, title: 'Villa Gaudelet', address: "16 Villa Gaudelet, 75011 Paris, France", description: "Le Wagon is ranked as the world's best coding bootcamp. The Villa Gaudelet is the headquarter of ", price: 600000)
villa_gaudelet.photo.attach(io: file_vg, filename: 'villa_gaudelet.jpg', content_type: 'image/jpg')
villa_gaudelet.save



puts "finished seed"




