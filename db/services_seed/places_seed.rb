# Encoding: UTF-8

############################################################ PLACES ############################################################

place_type = ServiceType.create(name: 'Lieux',
                                image_url: 'http://img841.imageshack.us/img841/1889/imagelieux.png',
                                icon_url: 'http://img717.imageshack.us/img717/3339/lieux.png')

Service.create(name: 'Château Murakani', 
               phone_number: '0405060708', 
               address: "110, boulevard Gambetta 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://blg.murakamiphotography.co.uk/blog/2008/td_highcliffe_castle_wedding.jpg',
               pictures_url: 'http://blg.murakamiphotography.co.uk/blog/2008/td_bridal_portrait_highcliffe_castle_dorset.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_groom_portrait.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_highcliffe_castle_romantic_portrait.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_the_old_barn_dorset_wedding_venues.jpg', 
               service_type: place_type,
               summary: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: '250€ la journée',
               price_form: 250)

Service.create(name: 'Parc Phoenix', 
               phone_number: '0405060708', 
               address: "110, boulevard Gambetta 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.nicerendezvous.com/car/images/stories/visite/nice-serre-parc-phoenix-2.jpg',
               pictures_url: 'http://www.unice.fr/ecomers/images/stories/ECOMERS/Agenda/Parc_Phoenix_002_r.jpg;http://www.nicerendezvous.com/car/images/stories/per-carriera/parc_phoenix.jpg;http://imalbum.aufeminin.com/album/D20090901/590307_4LN2BM8HM3KJRXFXMBYPEBCTW6FNDE_dsc00018_H163352_L.jpg', 
               service_type: place_type, 
                summary: 'Le Parc Phoenix, situé à l’entrée de Nice, s’étend sur 7 hectares. 2500 espèces de plantes, dont certaines réputées rares, sont préservées dans un décor de type méditerranéen. La serre tropicale de 7000m2 et de 25 m de haute est une des plus grandes d’Europe. Conçu comme un lieu de rencontre entre l’homme et la nature, il se compose d’une vingtaine de jardins à thèmes sonorisés.',
               description: 'Au gré de la visite du parc, le promeneur découvre : L’île des temps révolus (végétaux survivants depuis plus de 8 millions d’années), les jardins éthno-botaniques, la bambouseraie. Le tapis de fleurs odorantes, différentes selon la saison, flattent les sens par leurs couleurs et leurs senteurs. Des bancs appellent au repos le long de l’oued autour duquel un paysage de campagne a été reproduit. Le lac sur lequel évoluent les pélicans, les cygnes noirs et les canards, aux côtés des tortues, ainsi que les "cascades méditerranéennes" offrent un spectacle unique. La volière regroupe grand nombre d’espèces de rapaces et d’oiseaux exotiques. Quant à la serre, d’une haute technologie, elle met en scène 6 climats tropicaux différents. On y trouve une forêt de fougères arborescentes et une très vaste collection d’orchidées. La faune exotique est présente avec quelques spécimens d’insectes, de nombreuses espèces de mygales, et des aquariums avec des espèces très diversifiées de poissons. Les jardins de la serre Louisiane, la serre orchidées, la serre d’Afrique Australe traduisent la biodiversité et la richesse de la nature…', 
               price: '2€ par personne',
               price_form: 2)
               
Service.create(name: 'Plage privée Saint Jean', 
               phone_number: '0405060708', 
               address: "110, boulevard Gambetta 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://thumbs.dreamstime.com/thumblarge_299/1218456619rGGV60.jpg',
               pictures_url: 'http://www.prestigemaison.com/wp-content/uploads/2011/09/Deco-mariage-sur-plage.jpg;http://4.bp.blogspot.com/_bVhv4cyrYJ8/TEW9w1w2hDI/AAAAAAAAAjE/JykJCpqBh9c/s1600/+c%C3%A9r%C3%A9monie-plage-mariage-sable.png;http://decoration.emulty.com/wp-content/uploads/d%C3%A9corations-de-mariage-de-plage-11.jpg', 
               service_type: place_type, 
               summary: 'La presqu’île de Saint-Jean-Cap-Ferrat, nichée entre Nice et Monaco, est l’un des endroits les plus prisés de la Côte d’Azur, et est un lieu idéal pour fêter le plus beau jour de sa vie',
               description: 'La presqu’île de Saint-Jean-Cap-Ferrat, nichée entre Nice et Monaco, est l’un des endroits les plus prisés de la Côte d’Azur. Elle abrite dans son écrin naturel la plage de Passable, une crique au décor de carte postale. Oasis de verdure, à l’abri du vent, Passable est baignée toute la journée par la lumière du soleil et jouit d’une vue imprenable sur la baie de Villefranche. Elle a su conserver un caractère sauvage trop souvent oublié sur les rivages surpeuplés de la cote d’Azur. Ici, le temps semble suspendu et le charme agit de jour comme de nuit', 
               price: '200€ par jour, supplément de 100€ pour la soirée',
               price_form: 200)

Service.create(name: 'Eglise gothique de Pardu', 
               phone_number: '0405060708', 
               address: "110, boulevard Gambetta 06000 Nice (Alpes-Maritimes)", 
               front_picture: 'http://www.mage-image.fr/photo-mariage-2009-/ceremonie-religieuse/slides/ceremonie-mariage-091.jpg',
               pictures_url: 'http://wedding-splendor.com/wp-content/uploads/2010/05/Wedding-Church-Decoration-Tips3.jpg;http://weddings-paradise.com/wp-content/uploads/2011/02/church-wedding-flowers4.jpg;http://www.perfect-wedding-day.com/image-files/church-wedding-decorations-4.jpg;http://www.1weddingsource.com/blogimages/2011/01/Church-Wedding-Ceremonies.jpg', 
               service_type: place_type, 
               summary: 'Les Evêques de France, en novembre 2003, ont décidé que la préparation au mariage serait étalée sur toute une année. Du temps est donné aux couples pour faire un chemin d’approfondissement du sacrement qu’ils demandent mais aussi pour découvrir là où ils en sont dans leur cheminement de foi et de vie en Eglise. L\'Egilse gothique de Pardu accueille les fiancés pour un mariage mémorable',
               description: 'Les Evêques de France, en novembre 2003, ont décidé que la préparation au mariage serait étalée sur toute une année. Du temps est donné aux couples pour faire un chemin d’approfondissement du sacrement qu’ils demandent mais aussi pour découvrir là où ils en sont dans leur cheminement de foi et de vie en Eglise. Jésus, le Christ, par son Eglise, accueille le don mutuel, libre et définitif de l\'homme et de la femme qui se marient. Cet amour reçu est fidèle et fécond pour les conjoints, leurs enfants et toutes leurs relations', 
               price: '300€ par jour, supplément de 100€ pour la soirée',
               price_form: 300)
               