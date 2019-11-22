# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting seed"
Booking.destroy_all
Monument.destroy_all
User.destroy_all

charles = User.create(email: "charles@gmail.com", password: "123456", first_name: "charles", last_name: "stas")
sibylle = User.create(email: "sibylle@gmail.com", password: "123456", first_name: "sibylle", last_name: "eloy")
martin = User.create(email: "martin@gmail.com", password: "123456", first_name: "martin", last_name: "navarete")
priscille = User.create(email: "priscille@gmail.com", password: "123456", first_name: "priscille", last_name: "toulemonde")


photos_array = []
photos_array << URI.open('https://www.novastan.org/fr/wp-content/uploads/sites/4/2018/03/Image1-1.jpg')
photos_array << URI.open('https://www.discoverwalks.com/blog/wp-content/uploads/2015/09/louvre-inside-big-1280x720.jpg')
photos_array << URI.open('https://parismatch.be/app/uploads/2019/03/8042928_269fcfb0-52d1-11e9-9f7f-1957dc8adf55-1_1000x625-1100x715.jpg')
the_louvre = Monument.new(user: charles, title: 'The Louvre', address: 'Paris, France', description: "The Louvre or the Louvre Museum, is the world's largest art museum and a historic monument in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement (district or ward). Approximately 38,000 objects from prehistory to the 21st century are exhibited over an area of 72,735 square metres (782,910 square feet). In 2018, the Louvre was the world's most visited art museum, receiving 10.2 million visitors.", price: 900000)
photos_array.each_with_index do |photo, index|
  the_louvre.photos.attach(io: photo, filename: "the_louvre_#{index}.jpg", content_type: 'image/jpg')
end
the_louvre.save


photos_array = []
photos_array << URI.open('https://www.toureiffel.paris/sites/default/files/styles/1440x810/public/2017-10/monument-landing-header-bg_0.jpg?itok=_dSLLBlZ')
photos_array << URI.open('https://www.sortiraparis.com/images/80/83517/438334-visuel-paris-tour-eiffel-19.jpg')
photos_array << URI.open('https://img-4.linternaute.com/cv2k3btDzZhtnviFc3M3asFIr2Y=/1240x/smart/7244e5210e52400fa046c092d12d307f/ccmcms-linternaute/11468236.jpg')
eiffel_tower = Monument.new(user: sibylle, title: 'The Eiffel Tower', address: 'Paris, France', description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Constructed from 1887 to 1889 as the entrance to the 1889 World's Fair, it was initially criticised by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognisable structures in the world. The Eiffel Tower is the most-visited paid monument in the world; 6.91 million people ascended it in 2015.", price: 900000)
photos_array.each_with_index do |photo, index|
eiffel_tower.photos.attach(io: photo, filename: "eiffel_tower_#{index}.jpg", content_type: 'image/jpg')
end
eiffel_tower.save


photos_array = []
photos_array << URI.open('https://pic.clubic.com/v1/images/1720750/raw')
photos_array << URI.open('https://images2.minutemediacdn.com/image/upload/c_crop,h_2138,w_3809,x_0,y_0/v1554744380/shape/mentalfloss/556629-istock-852755038_primary.jpg?itok=_6oc5fKR')
photos_array << URI.open('https://img.lemde.fr/2019/04/15/291/0/3500/1750/1440/720/60/0/a1eb018_TOR516_FRANCE-NOTREDAME-_0415_11.JPG')
notre_dame = Monument.new(user: martin, title: 'Notre Dame de Paris', address: 'Paris, France', description: "Notre-Dame de Paris, referred to simply as Notre-Dame, is a medieval Catholic cathedral on the Île de la Cité in the 4th arrondissement of Paris. The cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture. Its pioneering use of the rib vault and flying buttress, its enormous and colourful rose windows, as well as the naturalism and abundance of its sculptural decoration set it apart from the earlier Romanesque style. Major components that make Notre Dame stand out include one of the world's largest organs and its immense church bells.", price: 200000)
photos_array.each_with_index do |photo, index|
notre_dame.photos.attach(io: photo, filename: "notre_dame_#{index}.jpg", content_type: 'image/jpg')
end
notre_dame.save


photos_array = []
photos_array <<  URI.open('https://frenchdistrict.com/new-york/wp-content/uploads/sites/3/2015/10/10-secrets-central-park-histoire-une.jpg')
photos_array <<  URI.open('https://www.nationalgeographic.com/content/dam/travel/2019-digital/central-park-new-york-city/belvedere-castle.adapt.1900.1.jpg')
photos_array <<  URI.open('https://www.guidesulysse.com/images/destinations/iStock-465483601.jpg')
central_park = Monument.new(user: priscille, title: 'Central Park', address: 'New York City, USA', description: "Central Park is an urban park in Manhattan, New York City, located between the Upper West Side and the Upper East Side. Central Park is the most visited urban park in the United States, with an estimated 37.5–38 million visitors annually, and one of the most filmed locations in the world. Central Park is the fifth-largest park in New York City by area, covering 843 acres (3.41 km2).", price: 600000)
photos_array.each_with_index do |photo, index|
central_park.photos.attach(io: photo, filename: "central_park_#{index}.jpg", content_type: 'image/jpg')
end
central_park.save

photos_array = []
photos_array <<  URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Grand_Prismatic_Spring_2013.jpg/1200px-Grand_Prismatic_Spring_2013.jpg')
photos_array <<  URI.open('https://img.sunset02.com/sites/default/files/styles/marquee_large_2x/public/image/2016/06/main/yellowstone-falls-yellowstone-national-park-sun-0716.jpg?itok=5cK0oG1Z')
photos_array <<  URI.open('https://www.tripsavvy.com/thmb/dKkY4IS6AM5JyOjlQCEn1zQGqYI=/3864x2576/filters:no_upscale():max_bytes(150000):strip_icc()/american-bisons-grazing-on-field-by-mountains-at-yellowstone-national-park-965014404-5c2bc8aac9e77c000110430a.jpg')
yellow_stone = Monument.new(user: charles, title: 'Yellowstone Park', address: 'California, USA', description: "Yellowstone National Park is an American national park located mostly in Wyoming, with small sections in Montana and Idaho. It was established by the U.S. Congress and signed into law by President Ulysses S. Grant on March 1, 1872. Yellowstone was the first national park in the U.S. and is also widely held to be the first national park in the world. The park is known for its wildlife and its many geothermal features, especially Old Faithful geyser, one of its most popular features. It has many types of ecosystems, but the subalpine forest is the most abundant. It is part of the South Central Rockies forests ecoregion.", price: 300000)
photos_array.each_with_index do |photo, index|
yellow_stone.photos.attach(io: photo, filename: "yellow_stone_#{index}.jpg", content_type: 'image/jpg')
end
yellow_stone.save


photos_array = []
photos_array <<  URI.open('https://cdn-media.rtl.fr/online/image/2019/0712/7798026590_une-vue-de-buckingham-palace-le-25-mai-2010-illustration.jpg')
photos_array <<  URI.open('https://www.royal.uk/sites/default/files/media/pa-6170415.jpg')
photos_array <<  URI.open('https://www.hellomagazine.com/imagenes/homes/2019040371622/inside-the-queen-house-buckingham-palace/0-349-441/royals-buckingham-palace-t.jpg')
buckingham_palace = Monument.new(user: sibylle, title: 'Buckingham Palace', address: 'London, UK', description: "Buckingham Palace is the London residence and administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning. Originally known as Buckingham House, the building at the core of today's palace was a large townhouse built for the Duke of Buckingham in 1703 on a site that had been in private ownership for at least 150 years. It was acquired by King George III in 1761 as a private residence for Queen Charlotte and became known as The Queen's House.", price: 400000)
photos_array.each_with_index do |photo, index|
buckingham_palace.photos.attach(io: photo, filename: "buckingham_palace_#{index}.jpg", content_type: 'image/jpg')
end
buckingham_palace.save


photos_array = []
photos_array << URI.open('http://www.chateauversailles.fr/sites/default/files/styles/visuel_principal_home/public/visuels_principaux/acceuil_tg_ete.jpg?itok=25UY46TK')
photos_array << URI.open('https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_720,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/cv8bgqsuad3ynpusfd7c/.jpg')
photos_array << URI.open('https://www.travelcaffeine.com/wp-content/uploads/2014/04/DSC_7049-as-Smart-Object-1-copy.jpg')
palace_versailles = Monument.new(user: martin, title: 'Palace of Versailles', address: "Versailles, France", description: "The Palace of Versailles was the principal royal residence of France from 1682, under Louis XIV, until the start of the French Revolution in 1789, under Louis XVI. The palace is now an historical monument and UNESCO World Heritage site, notable especially for the ceremonial Hall of Mirrors, the jewel-like Royal Opera, and the royal apartments; for the more intimate royal residences, the Grand Trianon and Petit Trianon located within the park; the small rustic Hameau (Hamlet) created for Marie Antoinette; and the vast Gardens of Versailles with fountains, canals, and geometric flower beds and groves, laid out by André le Nôtre. ", price: 900000)
photos_array.each_with_index do |photo, index|
palace_versailles.photos.attach(io: photo, filename: "palace_versailles_#{index}.jpg", content_type: 'image/jpg')
end
palace_versailles.save


photos_array = []
photos_array << URI.open('https://img.theculturetrip.com/x/smart/wp-content/uploads/2016/04/6239660891_0d9cddfd4c_o-e1460978259654.jpg')
photos_array << URI.open('https://www.google.com/maps/about/images/treks/tajmahal4-carousel.jpg')
photos_array << URI.open('https://cdn.civitatis.com/india/delhi/galeria/exteriores-taj-mahal.jpg')
taj_mahal = Monument.new(user: priscille, title: 'Taj Mahal', address: "India", description: "The Taj Mahal is an ivory-white marble Islamic mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan (reigned from 1628 to 1658) to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.", price: 700000)
photos_array.each_with_index do |photo, index|
taj_mahal.photos.attach(io: photo, filename: "taj_mahal_#{index}.jpg", content_type: 'image/jpg')
end
taj_mahal.save


photos_array = []
photos_array << URI.open('https://www.visitriodejaneiro.city/wp-content/uploads/2016/07/Panoramica-del-Cristo-Redentor.png')
photos_array << URI.open('https://i.ytimg.com/vi/dYA5O1FMkbE/maxresdefault.jpg')
photos_array << URI.open('https://i.pinimg.com/originals/a9/95/a1/a995a10073e87efd877b76ccc8729ccd.jpg')
cristo_redentor = Monument.new(user: charles, title: 'Cristo Redentor', address: "Rio de Janeiro, Brazil", description: "Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot. Romanian sculptor Gheorghe Leonida fashioned the face. Constructed between 1922 and 1931, the statue is 30 metres (98 ft) high, excluding its 8-metre (26 ft) pedestal. The arms stretch 28 metres (92 ft) wide.", price: 600000)
photos_array.each_with_index do |photo, index|
cristo_redentor.photos.attach(io: photo, filename: "cristo_redentor_#{index}.jpg", content_type: 'image/jpg')
end
cristo_redentor.save


photos_array = []
photos_array << URI.open('https://www.tripsavvy.com/thmb/-tzBp8Gy4A2v7-XK07TYecZXWfk=/2286x1311/filters:fill(auto,1)/GettyImages-200478089-001-06db86e7b540494a807a46af6c6c7f11.jpg')
photos_array << URI.open('https://i.imgur.com/xfPV9W2.jpg')
photos_array << URI.open('https://humanoriginproject.com/wp-content/uploads/2019/05/How-were-the-pyramids-of-giza-built.jpg')
pyramid_cheops = Monument.new(user: sibylle, title: 'Pyramid of Cheops', address: "Al Giza Desert, Egypt", description: "The Great Pyramid of Giza (also known as the Pyramid of Khufu or the Pyramid of Cheops) is the oldest and largest of the three pyramids in the Giza pyramid complex bordering present-day Giza in Greater Cairo, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact. Based on a mark in an interior chamber naming the work gang and a reference to the Fourth Dynasty Egyptian pharaoh Khufu, some Egyptologists believe that the pyramid was thus built as a tomb over a 10- to 20-year period concluding around 2560 BC.", price: 500000)
photos_array.each_with_index do |photo, index|
pyramid_cheops.photos.attach(io: photo, filename: "pyramid_cheops_#{index}.jpg", content_type: 'image/jpg')
end
pyramid_cheops.save

photos_array = []
photos_array << URI.open('https://miro.medium.com/max/1000/1*vU-_wCvHNcxOeP4vGxXukQ.jpeg')
photos_array << URI.open('https://leperchoir.tv/wp-content/uploads/2017/08/009_131215_183612.jpg')
photos_array << URI.open('https://media.abcsalles.com/images/1/salles/1440x960/31673/le-perchoir.jpg')
le_perchoir = Monument.new(user: martin, title: 'Le Perchoir', address: "Paris, France", description: "This enormously popular bar in Ménilmontant has a huge rooftop with a 360 degree view of the capital. Despite ‘speakeasy’ pretentions (the street entrance is unmarked), the place is becoming a victim of its own success, with queues out of the front door to be endured before you take the lift to the 7th floor. But once you do make it up there, you’ll find a vast space surrounding a handsome bar, comfortable sofas strewn with cushions, colourful plants and scented herbs planted in pots around the seats or hung from railings. Watching the sun set over the Sacré-Coeur, glass in hand, under garlands of coloured lights, really is something special.", price: 50)
photos_array.each_with_index do |photo, index|
le_perchoir.photos.attach(io: photo, filename: "le_perchoir_#{index}.jpg", content_type: 'image/jpg')
end
le_perchoir.save



photos_array = []
photos_array << URI.open('http://bindies.fr/wp-content/uploads/2016/11/LEWAGON_20151210_HD-1.jpg')
photos_array << URI.open('https://cdn.welcometothejungle.co/uploads/image/file/2415/155653/6590ca17-52cf-4052-be6e-ec21aa151231.jpg')
photos_array << URI.open('https://cdn.welcometothejungle.co/uploads/article/image/5198/154220/Boris-paillard-lewagon-15-web.jpg')
villa_gaudelet = Monument.new(user: priscille, title: 'Villa Gaudelet', address: "Paris, France", description: "Home of the world's best coding bootcamp. The Villa Gaudelet is the headquarter of Le Wagon. With our 9-week full-time or 24-week part-time coding bootcamp, build several web applications and your own personal project. Create a solid Github portfolio and learn to work within a tech team.", price: 100)
photos_array.each_with_index do |photo, index|
villa_gaudelet.photos.attach(io: photo, filename: "villa_gaudelet_#{index}.jpg", content_type: 'image/jpg')
end
villa_gaudelet.save



puts "finished seed"




