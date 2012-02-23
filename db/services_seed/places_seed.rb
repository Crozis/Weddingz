# Encoding: UTF-8

############################################################ PLACES ############################################################

place_type = ServiceType.create(name: 'Lieux',
                                image_url: 'http://img841.imageshack.us/img841/1889/imagelieux.png',
                                icon_url: 'http://img717.imageshack.us/img717/3339/lieux.png')

Service.create(name: 'Château Murakani', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://blg.murakamiphotography.co.uk/blog/2008/td_highcliffe_castle_wedding.jpg',
               pictures_url: 'http://blg.murakamiphotography.co.uk/blog/2008/td_bridal_portrait_highcliffe_castle_dorset.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_groom_portrait.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_highcliffe_castle_romantic_portrait.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_the_old_barn_dorset_wedding_venues.jpg', 
               service_type: place_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: '250€ la journée')

Service.create(name: 'Parc Phoenix', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.nicerendezvous.com/car/images/stories/visite/nice-serre-parc-phoenix-2.jpg',
               pictures_url: 'http://www.unice.fr/ecomers/images/stories/ECOMERS/Agenda/Parc_Phoenix_002_r.jpg;http://www.nicerendezvous.com/car/images/stories/per-carriera/parc_phoenix.jpg;http://imalbum.aufeminin.com/album/D20090901/590307_4LN2BM8HM3KJRXFXMBYPEBCTW6FNDE_dsc00018_H163352_L.jpg', 
               service_type: place_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: '2€ par personne')
               
Service.create(name: 'Plage privée Saint Jean', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://thumbs.dreamstime.com/thumblarge_299/1218456619rGGV60.jpg',
               pictures_url: 'http://www.prestigemaison.com/wp-content/uploads/2011/09/Deco-mariage-sur-plage.jpg;http://4.bp.blogspot.com/_bVhv4cyrYJ8/TEW9w1w2hDI/AAAAAAAAAjE/JykJCpqBh9c/s1600/+c%C3%A9r%C3%A9monie-plage-mariage-sable.png;http://decoration.emulty.com/wp-content/uploads/d%C3%A9corations-de-mariage-de-plage-11.jpg', 
               service_type: place_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: '200€ par jour, supplément de 100€ pour la soirée')

Service.create(name: 'Eglise gothique de Pardu', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.mage-image.fr/photo-mariage-2009-/ceremonie-religieuse/slides/ceremonie-mariage-091.jpg',
               pictures_url: 'http://wedding-splendor.com/wp-content/uploads/2010/05/Wedding-Church-Decoration-Tips3.jpg;http://weddings-paradise.com/wp-content/uploads/2011/02/church-wedding-flowers4.jpg;http://www.perfect-wedding-day.com/image-files/church-wedding-decorations-4.jpg;http://www.1weddingsource.com/blogimages/2011/01/Church-Wedding-Ceremonies.jpg', 
               service_type: place_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: '200€ par jour, supplément de 100€ pour la soirée')
               