# Encoding: UTF-8

############################################################ FLORISTS ############################################################

photographs_type    = ServiceType.create(name: 'Photographes')

Service.create(name: 'David Bornais', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://img401.imageshack.us/img401/8416/screenshot20120217at112r.png',
               pictures_url: 'http://img815.imageshack.us/img815/2356/screenshot20120217at112.png;http://img88.imageshack.us/img88/2356/screenshot20120217at112.png;http://img401.imageshack.us/img401/2356/screenshot20120217at112.png', 
               service_type: photographs_type, 
               summary: 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'De 650€ pour la cérémonie, rajouter 300€ pour la réception')

Service.create(name: 'Alliance Photo', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.alliance-photo.com/images/0573red.jpg',
               pictures_url: 'http://www.alliance-photo.com/images/0675red.jpg;http://www.alliance-photo.com/images/b437a_redimensionner.jpg;http://www.nice-mariage.fr/wpimages/wpaa321026_0f.jpg', 
               service_type: photographs_type, 
               summary: 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'De 650€ pour la cérémonie, rajouter 300€ pour la réception')

Service.create(name: 'Photographe Mariage', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.alliance-photo.com/images/0573red.jpg',
               pictures_url: 'http://www.alliance-photo.com/images/0675red.jpg;http://www.alliance-photo.com/images/b437a_redimensionner.jpg;http://www.nice-mariage.fr/wpimages/wpaa321026_0f.jpg', 
               service_type: photographs_type, 
               summary: 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'De 650€ pour la cérémonie, rajouter 300€ pour la réception')
