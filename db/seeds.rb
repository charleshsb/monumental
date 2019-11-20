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
photos_array << URI.open('https://www.discoverwalks.com/blog/wp-content/uploads/2015/09/louvre-inside-big-1280x720.jpg')
photos_array << URI.open('https://parismatch.be/app/uploads/2019/03/8042928_269fcfb0-52d1-11e9-9f7f-1957dc8adf55-1_1000x625-1100x715.jpg')
the_louvre = Monument.new(user: charles, title: 'The Louvre', address: 'Rue de Rivoli, 75001 Paris, France', description: "The world's largest art museum and a historic monument in Paris.", price: 500000)
photos_array.each_with_index do |photo, index|
  the_louvre.photos.attach(io: photo, filename: "the_louvre_#{index}.jpg", content_type: 'image/jpg')
end
the_louvre.save


photos_array = []
photos_array << URI.open('https://www.toureiffel.paris/sites/default/files/styles/1440x810/public/2017-10/monument-landing-header-bg_0.jpg?itok=_dSLLBlZ')
photos_array << URI.open('https://www.sortiraparis.com/images/80/83517/438334-visuel-paris-tour-eiffel-19.jpg')
photos_array << URI.open('https://img-4.linternaute.com/cv2k3btDzZhtnviFc3M3asFIr2Y=/1240x/smart/7244e5210e52400fa046c092d12d307f/ccmcms-linternaute/11468236.jpg')
eiffel_tower = Monument.new(user: charles, title: 'The Eiffel Tower', address: 'Rue de Rivoli, 75001 Paris, France', description: "A wrought-iron lattice tower on the Champ de Mars in Paris. It is the most-visited paid monument in the world.", price: 700000)
photos_array.each_with_index do |photo, index|
eiffel_tower.photos.attach(io: photo, filename: "eiffel_tower_#{index}.jpg", content_type: 'image/jpg')
end
eiffel_tower.save


photos_array = []
photos_array << URI.open('https://pic.clubic.com/v1/images/1720750/raw')
photos_array << URI.open('https://images2.minutemediacdn.com/image/upload/c_crop,h_2138,w_3809,x_0,y_0/v1554744380/shape/mentalfloss/556629-istock-852755038_primary.jpg?itok=_6oc5fKR')
photos_array << URI.open('https://img.lemde.fr/2019/04/15/291/0/3500/1750/1440/720/60/0/a1eb018_TOR516_FRANCE-NOTREDAME-_0415_11.JPG')
notre_dame = Monument.new(user: charles, title: 'Notre Dame de Paris', address: '6 place Jean Paul II Prv Notre Dame, 75004 Paris, France', description: "A medieval Catholic cathedral on the Île de la Cité in the 4th arrondissement of Paris. The cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture.", price: 200000)
photos_array.each_with_index do |photo, index|
notre_dame.photos.attach(io: photo, filename: "notre_dame_#{index}.jpg", content_type: 'image/jpg')
end
notre_dame.save


photos_array = []
photos_array <<  URI.open('https://frenchdistrict.com/new-york/wp-content/uploads/sites/3/2015/10/10-secrets-central-park-histoire-une.jpg')
photos_array <<  URI.open('https://www.nationalgeographic.com/content/dam/travel/2019-digital/central-park-new-york-city/belvedere-castle.adapt.1900.1.jpg')
photos_array <<  URI.open('https://www.guidesulysse.com/images/destinations/iStock-465483601.jpg')
central_park = Monument.new(user: charles, title: 'Central Park', address: 'Manhattan, New York City, USA', description: "Central Park is an urban park in Manhattan, located between the Upper West Side and the Upper East Side. Central Park is the most visited urban park in the United States, with an estimated 37.5–38 million visitors annually, and one of the most filmed locations in the world.", price: 700000)
photos_array.each_with_index do |photo, index|
central_park.photos.attach(io: photo, filename: "central_park_#{index}.jpg", content_type: 'image/jpg')
end
central_park.save

photos_array = []
photos_array <<  URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Grand_Prismatic_Spring_2013.jpg/1200px-Grand_Prismatic_Spring_2013.jpg')
photos_array <<  URI.open('https://img.sunset02.com/sites/default/files/styles/marquee_large_2x/public/image/2016/06/main/yellowstone-falls-yellowstone-national-park-sun-0716.jpg?itok=5cK0oG1Z')
photos_array <<  URI.open('https://www.tripsavvy.com/thmb/dKkY4IS6AM5JyOjlQCEn1zQGqYI=/3864x2576/filters:no_upscale():max_bytes(150000):strip_icc()/american-bisons-grazing-on-field-by-mountains-at-yellowstone-national-park-965014404-5c2bc8aac9e77c000110430a.jpg')
yellow_stone = Monument.new(user: sibylle, title: 'Yellowstone National Park', address: 'Yellowstone National Park, WY 82190, USA', description: "An American national park located mostly in Wyoming, with small sections in Montana and Idaho.", price: 300000)
photos_array.each_with_index do |photo, index|
yellow_stone.photos.attach(io: photo, filename: "yellow_stone_#{index}.jpg", content_type: 'image/jpg')
end
yellow_stone.save


photos_array = []
photos_array <<  URI.open('https://cdn-media.rtl.fr/online/image/2019/0712/7798026590_une-vue-de-buckingham-palace-le-25-mai-2010-illustration.jpg')
photos_array <<  URI.open('https://www.royal.uk/sites/default/files/media/pa-6170415.jpg')
photos_array <<  URI.open('https://www.hellomagazine.com/imagenes/homes/2019040371622/inside-the-queen-house-buckingham-palace/0-349-441/royals-buckingham-palace-t.jpg')
buckingham_palace = Monument.new(user: sibylle, title: 'Buckingham Palace', address: 'Westminster, London SW1A 1AA, UK', description: "The London residence and administrative headquarters of the monarch of the United Kingdom.", price: 500000)
photos_array.each_with_index do |photo, index|
buckingham_palace.photos.attach(io: photo, filename: "buckingham_palace_#{index}.jpg", content_type: 'image/jpg')
end
buckingham_palace.save


photos_array = []
photos_array << URI.open('http://www.chateauversailles.fr/sites/default/files/styles/visuel_principal_home/public/visuels_principaux/acceuil_tg_ete.jpg?itok=25UY46TK')
photos_array << URI.open('https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_720,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/cv8bgqsuad3ynpusfd7c/.jpg')
photos_array << URI.open('https://www.travelcaffeine.com/wp-content/uploads/2014/04/DSC_7049-as-Smart-Object-1-copy.jpg')
palace_versailles = Monument.new(user: sibylle, title: 'Palace of Versailles', address: "Place d'Armes, 78000 Versailles, France", description: "The principal royal residence of France from 1682, under Louis XIV, until the start of the French Revolution in 1789, under Louis XVI. In 2017 the Palace of Versailles received 7,700,000 visitors, making it the second-most visited monument in Paris region.", price: 800000)
photos_array.each_with_index do |photo, index|
palace_versailles.photos.attach(io: photo, filename: "palace_versailles_#{index}.jpg", content_type: 'image/jpg')
end
palace_versailles.save



photos_array = []
photos_array << URI.open('http://blog.philibertvoyages.fr/wp-content/uploads/2017/04/Taj-mahal-istock-JulieanneBirch.jpg')
photos_array << URI.open('https://www.google.com/maps/about/images/treks/tajmahal4-carousel.jpg')
photos_array << URI.open('https://cdn.civitatis.com/india/delhi/galeria/exteriores-taj-mahal.jpg')
taj_mahal = Monument.new(user: sibylle, title: 'Taj Mahal', address: "Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India", description: "An ivory-white marble Islamic mausoleum on the south bank of the Yamuna river in the Indian city of Agra.", price: 700000)
photos_array.each_with_index do |photo, index|
taj_mahal.photos.attach(io: photo, filename: "taj_mahal_#{index}.jpg", content_type: 'image/jpg')
end
taj_mahal.save



photos_array = []
photos_array << URI.open('https://cdn.civitatis.com/brasil/rio-de-janeiro/galeria/cristo-redentor-corcovado-brasil.jpg')
photos_array << URI.open('https://i.ytimg.com/vi/dYA5O1FMkbE/maxresdefault.jpg')
photos_array << URI.open('https://i.pinimg.com/originals/a9/95/a1/a995a10073e87efd877b76ccc8729ccd.jpg')
cristo_redentor = Monument.new(user: sibylle, title: 'Cristo Redentor', address: "Corcovado Mountain, Tijuca Forest National Park, Rio de Janeiro, Brazil", description: "An Art Deco statue of Jesus Christ in Rio de Janeiro, created by French sculptor Paul Landowski. The statue weighs 635 metric tons (625 long, 700 short tons), and is located at the peak of the 700-metre (2,300 ft) Corcovado mountain, the statue has become a cultural icon of both Rio de Janeiro and Brazil, and is listed as one of the New7Wonders of the World.", price: 600000)
photos_array.each_with_index do |photo, index|
cristo_redentor.photos.attach(io: photo, filename: "cristo_redentor_#{index}.jpg", content_type: 'image/jpg')
end
cristo_redentor.save


photos_array = []
photos_array << URI.open('http://bindies.fr/wp-content/uploads/2016/11/LEWAGON_20151210_HD-1.jpg')
photos_array << URI.open('https://cdn.welcometothejungle.co/uploads/image/file/2415/155653/6590ca17-52cf-4052-be6e-ec21aa151231.jpg')
photos_array << URI.open('https://cdn.welcometothejungle.co/uploads/article/image/5198/154220/Boris-paillard-lewagon-15-web.jpg')
villa_gaudelet = Monument.new(user: sibylle, title: 'Villa Gaudelet', address: "16 Villa Gaudelet, 75011 Paris, France", description: "Home of the world's best coding bootcamp. The Villa Gaudelet is the headquarter of Le Wagon", price: 600000)
photos_array.each_with_index do |photo, index|
villa_gaudelet.photos.attach(io: photo, filename: "villa_gaudelet_#{index}.jpg", content_type: 'image/jpg')
end
villa_gaudelet.save



puts "finished seed"




