# Encoding: UTF-8

############################################################ FLORISTS ############################################################

photographs_type = ServiceType.create(name: 'Photographes', 
                                      image_url: 'http://img830.imageshack.us/img830/6538/photographe.png',
                                      icon_url: 'http://img811.imageshack.us/img811/6026/photocb.png')

Service.create(name: 'David Bornais', 
               phone_number: '0405060708', 
               address: "12 routes St Pierre de Ferric 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://img401.imageshack.us/img401/8416/screenshot20120217at112r.png',
               pictures_url: 'http://img815.imageshack.us/img815/2356/screenshot20120217at112.png;http://img88.imageshack.us/img88/2356/screenshot20120217at112.png;http://img401.imageshack.us/img401/2356/screenshot20120217at112.png', 
               service_type: photographs_type, 
               summary: 'Votre mariage : toute votre émotion en images avec Lasbats Production. Présentation Avec une expérience de 35 ans, spécialisés dans la photographie de mariage, Corinne et Philippe Lasbats mettent tout leur savoir faire à votre service alliant la sensibilité et les techniques de pointe.',
               description: 'Avec une expérience de 35 ans, spécialisés dans la photographie de mariage, Corinne et Philippe Lasbats mettent tout leur savoir faire à votre service alliant la sensibilité et les techniques de pointe. Toute l\'émotion retrouvée. Un jour J inoubliable! Nous vous proposons une gamme unique et actuelle de prestations en vous offrant un rapport qualité/prix/nouveauté inégalé sur le marché. Nous offrons à nos clients les conseils qui leur éviteront les pièges innombrables dans l\'organisation de leur mariage.', 
               price: 'De 650€ pour la cérémonie, rajouter 300€ pour la réception')

Service.create(name: 'Alliance Photo', 
               phone_number: '0405060708', 
               address: "Route de Turin, 38 06300 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.alliance-photo.com/images/0573red.jpg',
               pictures_url: 'http://www.alliance-photo.com/images/0675red.jpg;http://www.alliance-photo.com/images/b437a_redimensionner.jpg;http://www.nice-mariage.fr/wpimages/wpaa321026_0f.jpg', 
               service_type: photographs_type, 
               summary: 'Artisan photographe, Stéphane Loiseau partage, avec vous, ses conseils et son expérience pour que votre mariage, comme les photos, soient aussi magiques que vous l\'imaginiez. Mêlant la spontanéïté et le naturel du photojournalisme au travail de la lumière et du cadrage des épreuves d\'art.',
               description: 'Stéphane Loiseau a conçu des formules pour simplifier votre approche. Après l\'avoir rencontré et détaillé le programme de votre mariage, il étudie la meilleure offre ou la prestation sur-mesure qui vous conviendrait le mieux en fonction de votre budget et de vos envies. Il couvre votre mariage dès les préparatifs de la mariée, vous guide dans les photos de couple et vous accompagne aux cérémonies. Sa prestation peut se terminer lors du vin d\'honneur ou à la fin du dîner. Que vous souhaitiez un album de grande qualité (50, 70 ou 100 photos de 15x23 cm) ou un prestigieux livre de photographies (format 30x30 cm en 24, 30 ou 40 pages), tous les supports sont envisageables, y compris ceux auxquels vous n\'auriez pas pensé. De plus, Nice Pictures vous offre un agrandissement de la photo de votre choix (format 30x40 cm), un blog pour communiquer avec vos amis et partager les souvenirs de votre mariage ainsi qu\'une galerie en ligne sécurisée présentant la totalité des photos libres de droits.', 
               price: 'De 500€ à 2000€')

Service.create(name: 'Photographe Mariage', 
               phone_number: '0405060708', 
               address: "Centre ville 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://fabrice.villoutreix.pagespro-orange.fr/mariageplage1.jpg',
               pictures_url: 'http://www.photographe-mariages.net/images/int/1.jpg;http://www.alliancephoto.fr/images/photographe_de_mariage.jpg;http://www.alliancephoto.fr/images/model1-site-PORTRAIT-NB.jpg;http://personalweddingideas.com/wp-content/uploads/2009/10/rings10.jpg', 
               service_type: photographs_type, 
               summary: 'Photographe sur Nice et Paris Un évènement arrive dans votre vie, un mariage, une naissance, un baptême ne cherchez plus votre photographe, je suis là pour immortaliser tous vos souvenirs.',
               description: 'Photographe sur Nice et Paris Un évènement arrive dans votre vie, un mariage, une naissance, un baptême ne cherchez plus votre photographe, je suis là pour immortaliser tous vos souvenirs.Informations complémentaires : N\'hésitez pas à nous contacter pour plus d\'informations ou afin d\'établir un devis sur mesure.', 
               price: 'De 650€ à 1500€ pour la cérémonie et rajouter 300€ pour la réception')


Service.create(name: 'Bruno Hajjar photographe', 
               phone_number: '0405060708', 
               address: "Promenade des Anglais 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mariages.net/emp/fotos/7/2/9/3/Snap259.jpg',
               pictures_url: 'http://www.photographe-mariages.net/images/int/1.jpg;http://www.alliancephoto.fr/images/photographe_de_mariage.jpg;http://www.alliancephoto.fr/images/model1-site-PORTRAIT-NB.jpg;http://personalweddingideas.com/wp-content/uploads/2009/10/rings10.jpg', 
               service_type: photographs_type, 
               summary: 'Photographe sur Nice et Paris Un évènement arrive dans votre vie, un mariage, une naissance, un baptême ne cherchez plus votre photographe, je suis là pour immortaliser tous vos souvenirs.',
               description: 'Grâce à des prestations à la carte, Bruno Hajjar construit sur-mesure son intervention en étroite collaboration avec vous. En fonction de votre programme, des lieux, du nombre de personnes et des supports surlesquels vous souhaitez recevoir vos photos, le photographe établit un devis personnalisé. Il s\'attache durant son reportage à capter tous les détails et l\'émotion qui marqueront l\'aspect unique de votre mariage. Dans les jours qui suivent la cérémonie, il optimise tous les clichés en post-production, l\'équivalent du développement pour les photos numériques. Il vous livre ensuite les photos sur DVD.', 
               price: 'De 650€ à 4000€')
               
Service.create(name: 'Eagle Eye Photographe', 
               phone_number: '0405060708', 
               address: "12 rue de la Tour de Magnan 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mariages.net/emp/fotos/0/3/9/9/web2.jpg',
               pictures_url: 'http://www.mariages.net/emp/fotos/0/3/9/9/DSC_2311.JPG;http://www.mariages.net/emp/fotos/0/3/9/9/409110_10150703218449418_514769417_12282288_1937092266_n.jpg;http://www.mariages.net/emp/fotos/0/3/9/9/403026_10150703195834418_514769417_12282234_523471566_n.jpg', 
               service_type: photographs_type, 
               summary: 'Photographe sur Nice et Paris Un évènement arrive dans votre vie, un mariage, une naissance, un baptême ne cherchez plus votre photographe, je suis là pour immortaliser tous vos souvenirs.',
               description: 'Grâce à des prestations à la carte, Bruno Hajjar construit sur-mesure son intervention en étroite collaboration avec vous. En fonction de votre programme, des lieux, du nombre de personnes et des supports surlesquels vous souhaitez recevoir vos photos, le photographe établit un devis personnalisé. Il s\'attache durant son reportage à capter tous les détails et l\'émotion qui marqueront l\'aspect unique de votre mariage. Dans les jours qui suivent la cérémonie, il optimise tous les clichés en post-production, l\'équivalent du développement pour les photos numériques. Il vous livre ensuite les photos sur DVD.', 
               price: 'De 650€ à 4000€')