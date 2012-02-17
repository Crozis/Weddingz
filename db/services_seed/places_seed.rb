############################################################ PLACES ############################################################

place_type = ServiceType.create(name: 'Lieux')

Service.create(name: 'Château Murakani', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://blg.murakamiphotography.co.uk/blog/2008/td_highcliffe_castle_wedding.jpg',
               pictures_url: 'http://blg.murakamiphotography.co.uk/blog/2008/td_bridal_portrait_highcliffe_castle_dorset.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_groom_portrait.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_highcliffe_castle_romantic_portrait.jpg;http://blg.murakamiphotography.co.uk/blog/2008/td_the_old_barn_dorset_wedding_venues.jpg', 
               service_type: place_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')

Service.create(name: 'Parc Phoenix', 
               phone_number: '0405060708', 
               address: "Mollis Commodo Malesuada Dapibus Aenean", 
               front_picture: 'http://www.nicerendezvous.com/car/images/stories/visite/nice-serre-parc-phoenix-2.jpg',
               pictures_url: 'http://www.unice.fr/ecomers/images/stories/ECOMERS/Agenda/Parc_Phoenix_002_r.jpg;http://www.nicerendezvous.com/car/images/stories/per-carriera/parc_phoenix.jpg;http://imalbum.aufeminin.com/album/D20090901/590307_4LN2BM8HM3KJRXFXMBYPEBCTW6FNDE_dsc00018_H163352_L.jpg', 
               service_type: place_type, 
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 
               price: '2€ par personne')
               