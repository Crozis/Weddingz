# Encoding: UTF-8

############################################################ FLORISTS ############################################################

florist_type = ServiceType.create(name: 'Fleuristes',
                                  image_url: 'http://img3.imageshack.us/img3/2039/imagefleuristes.png',
                                  icon_url: 'http://img210.imageshack.us/img210/1966/flowernz.png')

Service.create(name: 'Fleuriste Ariston', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.aristonflorist.com/art2/wed-corp.jpg',
               pictures_url: 'http://www.aristonflorist.com/art2/shopping_photo.jpg;http://www.aristonflorist.com/art2/weekly_photo.jpg;http://www.aristonflorist.com/art2/weddings.jpg', 
               service_type: florist_type, 
               summary: 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'De 150€ pour des décorations de tables à 1000€ pour la décoration d\'une église')

Service.create(name: 'Vase Vide', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.marcialjohnson.com/images/pics_about_nw.jpg',
               pictures_url: 'http://media.onsugar.com/files/2011/02/07/3/257/2570811/image_0.xxlarge.jpg;http://www.bride.ca/wedding-ideas/images/blog/flowers/bridal-party-bouquets.jpg;http://www.angelastewartcreative.com/images/large/SKIBO%20WEDDING%20FLOWERS_3.jpg;http://www.sanfranciscoweddingflowers.com/informal-wedding/creative-wedding-flowers.jpg', 
               service_type: florist_type, 
               summary: 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'De 100€ pour des décorations de tables à 800€ pour la décoration d\'une église')

Service.create(name: 'La Cerise de Pearson', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.celsiaflorist.com/images/new/wedding.arrangement.04.jpg',
               pictures_url: 'http://www.haughty-culture.co.uk/east-devon_florists/gallery_images/wedding_florist/east-devon_wedding1florist/wedding_florist1devon.jpg;http://www.appleblossomstampa.com/yahoo_site_admin/assets/images/Cone_Wedding_June_6_2009_023.16784319.JPG', 
               service_type: florist_type, 
               summary: 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'De 100€ pour des décorations de tables à 800€ pour la décoration d\'une église')
               
Service.create(name: 'Les Fleurs du Paradis', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.myweddingflowerideas.co.uk/wedding-flowers.jpg',
               pictures_url: 'http://www.bride.ca/wedding-ideas/images/blog/flowers/wedding-floral-decor.jpg;http://www.weddingflowersidea.com/wp-content/uploads/2011/07/Florist-wedding.jpg;http://wedding-splendor.com/wp-content/uploads/2010/09/wedding-flowers-designs3.jpg', 
               service_type: florist_type, 
               summary: 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'De 100€ pour des décorations de tables à 800€ pour la décoration d\'une église')
               
