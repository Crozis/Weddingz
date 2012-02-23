# Encoding: UTF-8

############################################################ FLORISTS ############################################################

caterer_type = ServiceType.create(name: 'Traiteurs',
                                  image_url: 'http://img268.imageshack.us/img268/5114/imagetraiteurs.png',
                                  icon_url:'http://img27.imageshack.us/img27/3009/traiteurs.png')

Service.create(name: 'LJ Traiteur', 
               phone_number: '0405060708', 
               address: "Rue Richelmi, 8 06300 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mariages.net/emp/fotos/2/3/1/1/xcambiar1.jpg',
               pictures_url: 'http://www.mariages.net/emp/fotos/2/3/1/1/xcambiar4.jpg;http://www.mariages.net/emp/fotos/2/3/1/1/xcambiar5.jpg;http://www.mariages.net/emp/fotos/2/3/1/1/xcambiar36.jpg;http://www.mariages.net/emp/fotos/2/3/1/1/xcambiar9.jpg', 
               service_type: caterer_type, 
               summary: 'L.J Traiteur est une société spécialisée dans l\'organisation de réceptions. Nous mettons notre expérience à votre service pour vos réceptions festives et nous sommes spécialisé dans les mariages',
               description: 'Organisation d\'un baptême un soin particulier est apporté à la présentation de nos buffets.La mise en place d\'une réception dépend de nombreux facteurs et répond à des codes implicites.L\'ambiance suscitée par une installation doit correspondre au type d\'événement que vous proposez.L\'arrangement visible sur la photographie a été réalisé pour un baptême. Des formules traiteur adaptées à vos attentes: Service à l\'assiette, Buffet, Cocktail, Plateaux repas. L\'attention que nous portons à la qualité de notre service traiteur et à nos produits est un gage de réussite pour vos réceptions.', 
               price: 'De 500€ à 3000€ en fonction du menu')

Service.create(name: 'Ma Cuisine se Balade', 
               phone_number: '0405060708', 
               address: "12, rue de villeneuve 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mariages.net/emp/fotos/4/4/9/2/Cheesecake.jpg',
               pictures_url: 'http://www.mariages.net/emp/fotos/4/4/9/2/Amuses%20bouches.jpg;http://www.mariages.net/emp/fotos/4/4/9/2/Millefeuille.jpg;http://www.mariages.net/emp/fotos/4/4/9/2/Traiteur%20de%20mariage.jpg;http://www.mariages.net/emp/fotos/4/4/9/2/Millefeuille.jpg;', 
               service_type: caterer_type, 
               summary: 'Vous recherchez un traiteur de qualité qui saura vous proposer une cuisine originale et conviviale? Le service de traiteur Ma Cuisine se Balade saura être votre partenaire de choix pour régaler vos invités et faire de votre réception de mariage un évènement inoubliable.',
               description: 'Ma Cuisine se Balade vous propose ses services pour imaginer avec vous un banquet de mariage qui correspond à vos attentes et à votre budget. Que vous souhaitiez organiser un cocktail dînatoire ou un banquet, son équipe vous concoctera sur place de délicieux plats conviviaux et pourra mettre en place de délicieux buffets salés ou sucrés mis en valeur par une présentation des plus originales.Son chef Nathalie se fera un plaisir de vous préparer de savoureux plats concoctés à partir de produits frais et de saisons issus de l\'artisanat local et de l\'agriculture biologique, pour une cuisine aussi saine que variée.', 
               price: 'De 200€ à 1500€ en fonction du menu et du nombre de personne')

Service.create(name: 'Azur Prestige Service', 
               phone_number: '0405060708', 
               address: "25 avenue Joseph Giordan 06200 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mariages.net/emp/fotos/6/4/2/4/Minigardises.jpg',
               pictures_url: 'http://www.mariages.net/emp/fotos/6/4/2/4/Mariage.jpg;http://www.mariages.net/emp/fotos/6/4/2/4/Minigardises3.jpg;http://www.mariages.net/emp/fotos/6/4/2/4/R%E9ception.jpg;http://www.mariages.net/emp/fotos/6/4/2/4/Une_cuisine_raffin%E9e.jpg', 
               service_type: caterer_type, 
               summary: 'Fort de son expérience dans la prestation de services haut de gamme, Azur Prestige Service s\'efforcera de répondre à toutes les exigences d\'une clientèle internationale.',
               description: 'Azur Prestige Service organise vos réceptions entièrement quelque soit le lieu, dans une villa ou sur un yacht.
Votre chef de cuisine vous offre les services suivants pour tous les évènements privés (déjeuner, diner, banquet, mariage, réception, etc.) : Chef à domicile, Serveur / Serveuse, Barman / Barmai, Location de matériel, Animation musicale. Azur Prestige Service peut également vous offrir des services suivant vos besoins spécifiques : placement de personnel, décoration florale, location de véhicules, esthéticienne, masseuse diplômée, professeur de sport, hôtesse d\'accueil, garde du corps.', 
               price: 'De 1000€ à 5000€ en fonction du menu et du nombre de personne')               
               