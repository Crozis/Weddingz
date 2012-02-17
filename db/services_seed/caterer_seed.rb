# Encoding: UTF-8

############################################################ FLORISTS ############################################################

caterer_type = ServiceType.create(name: 'Traiteurs')

Service.create(name: 'Fleuriste Ariston', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.aristonflorist.com/art2/ariston_logo.gif',
               pictures_url: 'http://www.aristonflorist.com/art2/shopping_photo.jpg;http://www.aristonflorist.com/art2/wed-corp.jpg;http://www.aristonflorist.com/art2/weekly_photo.jpg;http://www.aristonflorist.com/art2/weddings.jpg', 
               service_type: caterer_type, 
               summary: 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'De 150€ pour des décorations de tables à 1000€ pour la décoration d\'une église')
