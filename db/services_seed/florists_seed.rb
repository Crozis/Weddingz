# Encoding: UTF-8

############################################################ FLORISTS ############################################################

florist_type = ServiceType.create(name: 'Fleuristes',
                                  image_url: 'http://img3.imageshack.us/img3/2039/imagefleuristes.png',
                                  icon_url: 'http://img210.imageshack.us/img210/1966/flowernz.png')

Service.create(name: 'Fleuriste Ariston', 
               phone_number: '0405060708', 
               address: "110, boulevard Gambetta 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.aristonflorist.com/art2/wed-corp.jpg',
               pictures_url: 'http://www.aristonflorist.com/art2/shopping_photo.jpg;http://www.aristonflorist.com/art2/weekly_photo.jpg;http://www.aristonflorist.com/art2/weddings.jpg', 
               service_type: florist_type, 
               summary: 'Choisir des fleurs pour un mariage peut être une tâche difficile car chaque invité désire contribuer au bonheur des mariés et surtout que ces derniers se souviennent de leur bouquet cadeau. De nombreux bouquets de mariage sont à votre disposition, trouvez des compositions harmonieuses à offrir arrangées avec des Roses, Iris et pleins d’autres fleurs pour combler le joyeux couple de bonheur. Des couleurs unies aux bouquets multicolores, il y en a pour tous les goûts et nos fleurs feront la joie de leur destinataire. ',
               description: 'Pour célébrer et envoyer vos meilleurs vœux aux mariés, nous vous proposons des fleurs enveloppées dans du papier de soie mais aussi des arrangements précieusement préservées dans des cubes de céramique à envoyer chez les futurs époux. La livraison de fleurs est souvent très sollicitée lors de ces grands événements, c’est pour cela que choisir le bon fleuriste est un élément important à ne pas négliger. Pour ce grand jour de bonheur partagé, l’envoi de fleurs est certes le bienvenu et apprécié néanmoins il ne faut pas oublier d’accompagner votre bouquet de fleurs de mariage d’une carte de vœux ou d’autres petits cadeaux tels que des délicieux chocolats au lait ou pralinés. Avec tous ces éléments, votre présent sera le plus parfait des cadeaux ! Arena n’est pas qu’un simple fleuriste, offrir des fleurs de bonne qualité et rendre nos clients heureux pourraient suffire mais nous essayons également de rendre la journée de vos destinataires spéciale en vous proposant des fleurs aussi fraîches que possibles. Un mariage est un évènement formidable qui se doit d’être célébrer en grand et pour atteindre cela, il est impératif d’y inclure un fleuriste expérimenté (et nous en avons de l’expérience) pour remplir la salle de fleurs. Espérons un « Ils vécurent heureux et eurent pleins d’enfants » pour le joyeux couple !', 
               price: 'De 150€ pour des décorations de tables à 1000€ pour la décoration d\'une église')

Service.create(name: 'Aux Fleurs d\'Amél\'ys', 
               phone_number: '0405060708', 
               address: "110, boulevard Gambetta 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.marcialjohnson.com/images/pics_about_nw.jpg',
               pictures_url: 'http://media.onsugar.com/files/2011/02/07/3/257/2570811/image_0.xxlarge.jpg;http://www.bride.ca/wedding-ideas/images/blog/flowers/bridal-party-bouquets.jpg;http://www.angelastewartcreative.com/images/large/SKIBO%20WEDDING%20FLOWERS_3.jpg;http://www.sanfranciscoweddingflowers.com/informal-wedding/creative-wedding-flowers.jpg', 
               service_type: florist_type, 
               summary: 'Aux Fleurs d\'Amél\'ys vous propose de personnaliser et fleurir vos évènements. Passionnée par son métier Laetitia vous propose un travail créatif, moderne et raffinée.Selon vos envies et vos désirs, vos couleurs ou vos textures, je vous invite à venir voir notre boutique et ainsi voir nos tarifs',
               description: 'Aux Fleurs d\'Amél\'ys vous propose de personnaliser et fleurir vos évènements. Passionnée par son métier Laetitia vous propose un travail créatif, moderne et raffinée.  Selon vos envies et vos désirs, vos couleurs ou vos textures, je vous invite à venir voir notre boutique et ainsi voir nos tarifs attractifs.Au Fleurs d\'Amél\'ys vous propose de personnaliser et fleurir vos évènements. 
Passionnée par son métier Laetitia vous propose un travail créatif, moderne et raffinée.
Selon vos envies et vos désirs, vos couleurs ou vos textures, je vous invite à venir voir notre boutique et ainsi voir nos tarifs attractifs.', 
               price: 'De 100€ pour des décorations de tables à 800€ pour la décoration d\'une église')

Service.create(name: 'La Cerise de Pearson', 
               phone_number: '0405060708', 
               address: "110, boulevard Gambetta 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.celsiaflorist.com/images/new/wedding.arrangement.04.jpg',
               pictures_url: 'http://www.haughty-culture.co.uk/east-devon_florists/gallery_images/wedding_florist/east-devon_wedding1florist/wedding_florist1devon.jpg;http://www.appleblossomstampa.com/yahoo_site_admin/assets/images/Cone_Wedding_June_6_2009_023.16784319.JPG', 
               service_type: florist_type, 
               summary: 'Votre fleuriste à Nice vous accompagne dans tous les évènements de votre vie : naissance, anniversaires, mariage, repas de fêtes, deuil… ou simplement pour le plaisir d’offrir ou de s’offrir fleurs et plantes.',
               description: 'Prestations : Nous réalisons vos bouquets et vos compositions florales suivant vos gouts et vos envies. Horaires d’ouverture: Tous les jours de 8h30 à 19h30. Fermé le dimanche après-midi. Commandes par téléphone – Paiement CB à distance – Livraisons sur Nice.', 
               price: 'De 100€ pour des décorations de tables à 800€ pour la décoration d\'une église')
               
Service.create(name: 'Les Fleurs du Paradis', 
               phone_number: '0405060708', 
               address: "110, boulevard Gambetta 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.myweddingflowerideas.co.uk/wedding-flowers.jpg',
               pictures_url: 'http://www.bride.ca/wedding-ideas/images/blog/flowers/wedding-floral-decor.jpg;http://www.weddingflowersidea.com/wp-content/uploads/2011/07/Florist-wedding.jpg;http://wedding-splendor.com/wp-content/uploads/2010/09/wedding-flowers-designs3.jpg', 
               service_type: florist_type, 
               summary: 'Notre volonté première est de confectionner du sur-mesure, de donner couleurs et matières à vos envies, de vous faire partager notre passion. Originalité et fraîcheur habitent nos créations.',
               description: 'Prestations : Vous cherchiez un bouquet et vous trouverez ici un cadeau à offrir ou à vous offrir, dans votre budget et qui répond à vos goûts et vos envies de saison. Un grand choix de bouquets vous attend, pour embellir votre quotidien, à des prix doux. Nous réalisons, sur mesure, dans le respect de votre budget vos bouquets au gré de vos envies. Particuliers : Nous répondons à vos demandes, pour toutes les célébrations et les évènements de votre vie. Des plus classiques ou plus originales, nous vous invitons à découvrir un panel de nos créations en ligne. Naissance, communion, Mariage. Informations complémentaires : N\'hésitez pas à nous contacter pour plus d\'informations ou afin d\'établir un devis sur mesure.', 
               price: 'De 100€ pour des décorations de tables à 800€ pour la décoration d\'une église')
               
