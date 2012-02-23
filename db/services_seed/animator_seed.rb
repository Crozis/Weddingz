# Encoding: UTF-8

############################################################ FLORISTS ############################################################

animator_type = ServiceType.create(name: 'Animations',
                                   image_url: 'http://www.evenementielpourtous.com/upload/4619_3.jpg',
                                   icon_url: 'http://img3.imageshack.us/img3/6853/soundl.png')

Service.create(name: 'Nice Prod', 
               phone_number: '0405060708', 
               address: "331 promenade des anglais 06200 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mariages.net/emp/fotos/7/5/9/1/Fotolia_150403_XS%20-%20Copie%20-%20Copie.jpg',
               pictures_url: 'http://www.mariages.net/emp/fotos/7/5/9/1/Fotolia_325239_XS%20-%20Copie%20-%20Copie.jpg;http://www.mariages.net/emp/fotos/7/5/9/1/Fotolia_14530437_XS%20-%20Copie.jpg;http://www.mariages.net/emp/fotos/7/5/9/1/Fotolia_1467487_XS%20-%20Copie%20-%20Copie.jpg;http://www.mariages.net/emp/fotos/7/5/9/1/Ambiance_Mix_club.jpg', 
               service_type: animator_type, 
               summary: 'Nice Prod est avant tout une entreprise de location et de vente de matériel audio-visuel, qui a pour vocation de répondre aux besoins des particuliers comme des professionnels notamment pour l\'organisation de mariage',
               description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 
               price: 'De 500€ à 3000€ en fonction des prestations')

Service.create(name: 'Animation light Show', 
               phone_number: '0405060708', 
               address: "4 rue Cluvier 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mariages.net/emp/fotos/3/7/5/6/IMGP0071.jpg',
               pictures_url: 'http://www.mariages.net/emp/fotos/3/7/5/6/20111231_194852.jpg;http://www.mariages.net/emp/fotos/3/7/5/6/C%E9lebration.jpg;http://www.mariages.net/emp/fotos/3/7/5/6/Animation%20light%20Show.jpg;http://www.mariages.net/emp/fotos/3/7/5/6/%C9quipements.jpg;', 
               service_type: animator_type, 
               summary: 'Socièté située sur la côte d\'azur, vous propose plusieurs façons de faire votre bonheur lors de votre journée de Mariage , Anniversaire, Baptême, séminaire. Prestations Organisateur de Festivités évènementielles : Spectacle cabaret, danseuses orientales, ect. Votre soirée à prix imbattable!',
               description: 'Socièté située sur la côte d\'azur, vous propose plusieurs façons de faire votre bonheur lors de votre journée de Mariage , Anniversaire, Baptême, séminaire.Prestations : Organisateur de Festivités évènementielles : Spectacle cabaret, danseuses orientales, ect. Votre soirée à prix imbattable! pour votre évènement. Nous mettons des éclairages et assurons une ambiance musicale en tenant compte de vos préférences. N\'hésitez pas à nous contacter pour plus d\'informations ou afin d\'établir un devis sur mesure.Animation light show la garantie de moment inoubliable!', 
               price: 'De 800€ à 2500€ en fonction des prestations')
               
Service.create(name: 'Amplitubes', 
               phone_number: '0405060708', 
               address: "23 avenue sainte marguerite 06200 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mariages.net/emp/fotos/7/5/2/7/DSCF0236.JPG',
               pictures_url: 'http://www.mariages.net/emp/fotos/7/5/2/7/Soiree%20mariage.jpg;http://www.mariages.net/emp/fotos/7/5/2/7/DSCF2262.JPG', 
               service_type: animator_type, 
               summary: 'Vous voulez faire plaisir à vos invités en leurs préparant une soirée de choc! Et bien n\'hésitez pas à faire appels à nos services. Avec une équipe jeune et dynamique, vous passerez une soirée vraiment inoubliable et à la hauteur de votre évènement.',
               description: 'Vous cherchez un disc jockey sérieux dans la région PACA? Vous voulez passer une soirée vraiment fabuleuse jusqu’au bout de la nuit? L\'équipe d\'Amplitubes est toujours là, pour tous vos évènements. Un disc jockey-animateur et un technicien éclairagiste vous ferons passer une excellente soirée. Avec du matériels professionnel autant dans la sonorisation que dans l’éclairage, l’équipe d’Amplitubes est la clé de votre réussite. Nous vous proposons divers animation si vous le souhaitez (jeux, animation de table, etc.) en étant toujours à votre écoute.', 
               price: 'De 500€ à 3500€ en fonction des prestations')