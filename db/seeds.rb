# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

caterer_type = ServiceType.create(name: 'Caterers')
florist_type = ServiceType.create(name: 'Florists')
place_type   = ServiceType.create(name: 'Places')

############################################################ FLORISTS ############################################################

Service.create(name: 'Ariston Flowers', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.aristonflorist.com/art2/ariston_logo.gif',
               pictures_url: 'http://www.aristonflorist.com/art2/shopping_photo.jpg;http://www.aristonflorist.com/art2/wed-corp.jpg;http://www.aristonflorist.com/art2/weekly_photo.jpg;http://www.aristonflorist.com/art2/weddings.jpg', 
               service_type: florist_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')

Service.create(name: 'Empty Vase', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.emptyvase.com/images/logo.gif',
               pictures_url: 'http://www.aristonflorist.com/art2/shopping_photo.jpg;http://www.aristonflorist.com/art2/wed-corp.jpg;http://www.aristonflorist.com/art2/weekly_photo.jpg;http://www.aristonflorist.com/art2/weddings.jpg', 
               service_type: florist_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')

Service.create(name: 'Cherry Pearson', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://rebusiness.com.au/wp-content/uploads/2009/01/cheryl-pearson-bc-front-600.jpg',
               pictures_url: 'http://www.haughty-culture.co.uk/east-devon_florists/gallery_images/wedding_florist/east-devon_wedding1florist/wedding_florist1devon.jpg;http://www.celsiaflorist.com/images/new/wedding.arrangement.04.jpg;http://www.appleblossomstampa.com/yahoo_site_admin/assets/images/Cone_Wedding_June_6_2009_023.16784319.JPG', 
               service_type: florist_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')

Service.create(name: 'Flowers by Heidi', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.grif.org/images/entries/fbhlogo.gif',
               pictures_url: 'http://www.haughty-culture.co.uk/east-devon_florists/gallery_images/wedding_florist/east-devon_wedding1florist/wedding_florist1devon.jpg;http://www.celsiaflorist.com/images/new/wedding.arrangement.04.jpg;http://www.appleblossomstampa.com/yahoo_site_admin/assets/images/Cone_Wedding_June_6_2009_023.16784319.JPG', 
               service_type: florist_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')

############################################################ PLACES ############################################################
Service.create(name: 'Castle Murakani', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://blg.murakamiphotography.co.uk/blog/2008/td_highcliffe_castle_wedding.jpg',
               pictures_url: 'http://blg.murakamiphotography.co.uk/blog/2008/td_bridal_portrait_highcliffe_castle_dorset.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_groom_portrait.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_highcliffe_castle_romantic_portrait.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_the_old_barn_dorset_wedding_venues.jpg', 
               service_type: place_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')
               
client    = Users::Client.create(username: 'client', password: 'password')
organizer = Users::Organizer.create(username: 'organizer', password: 'password')
wedding   = Wedding.create(name: "Mariage d'Alice et Jean", budget: 4000, place: "Nice", nb_person: 100, client: client, organizer: organizer)
wedding.services << Service.all