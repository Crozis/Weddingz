# Encoding: UTF-8

accomodation_type   = ServiceType.create(name: 'Hébergements', image_url: 'http://img542.imageshack.us/img542/8813/hebergement.png', icon_url: 'http://img594.imageshack.us/img594/8813/hebergement.png')
decoration_type     = ServiceType.create(name: 'Décorations', image_url: 'http://img37.imageshack.us/img37/5911/decorationk.png',icon_url: 'http://img857.imageshack.us/img857/1411/decoc.png')

require File.dirname(__FILE__) + '/services_seed/florists_seed.rb'
require File.dirname(__FILE__) + '/services_seed/places_seed.rb'
require File.dirname(__FILE__) + '/services_seed/caterer_seed.rb'
require File.dirname(__FILE__) + '/services_seed/photographs_seed.rb'
require File.dirname(__FILE__) + '/services_seed/animator_seed.rb'

organizer = Users::Organizer.create(username: 'organizer', password: 'password')
wedding   = Wedding.create(budget:             4000, 
                           place:              "Nice", 
                           nb_person:          40, 
                           has_child:          false, 
                           organizer:          organizer,
                           bride_first_name:   'Alice',
                           bride_last_name:    'Liso',
                           bride_phone_number: '0607080910',
                           bride_email:        'alice@gmail.com',
                                             
                           groom_first_name:   'Jean',
                           groom_last_name:    'Trota',
                           groom_phone_number: '0610111213',
                           groom_email:        'jean@gmail.com',
                           
                           religion:           'Catholique',
                           place_type:         'Plage',
                           desired_atmosphere: 'Petit commité',
                           wedding_photo:       'http://img705.imageshack.us/img705/2356/screenshot20120217at112.png')
                                 
# groom     = Users::Client.create(username: 'groom@mail.com', password: 'password')
# bride     = Users::Client.create(username: 'bride@mail.com', password: 'password')
# wedding.clients << [groom, bride]

wedding2 = Wedding.create(budget:             4000, 
                          place:              "Nice", 
                          nb_person:          200, 
                          has_child:          true, 
                          organizer:          organizer,
                          bride_first_name:   'Julie',
                          bride_last_name:    'Dupont',
                          bride_phone_number: '0607080910',
                          bride_email:        'julie@gmail.com',
                                            
                          groom_first_name:   'Paolo',
                          groom_last_name:    'Carito',
                          groom_phone_number: '0610111213',
                          groom_email:        'paolo@gmail.com',
                            
                          religion:           'Catholique',
                          place_type:         'Château',
                          desired_atmosphere: 'Festif',
                          wedding_photo:      'http://www.yahindnews.com/wp-content/uploads/2011/03/Cute-Couple-R.jpg',
                          service_types: [ServiceType.where(:name => 'Fleuristes').first,
                                           ServiceType.where(:name => 'Traiteurs').first,
                                           ServiceType.where(:name => 'Lieux').first])
# groom2 = Users::Client.create(username: 'groom2@mail.com', password: 'password')
# bride2 = Users::Client.create(username: 'bride2@mail.com', password: 'password')
# wedding.clients << [groom2, bride2]

ServiceType.all.each do |service_type|
  if service_type.name == "Animations"
    wedding.service_types_weddings << ServiceTypesWedding.create(:service_type => service_type, :activated => false)
    wedding2.service_types_weddings << ServiceTypesWedding.create(:service_type => service_type, :activated => false)
  else
    wedding.service_types_weddings << ServiceTypesWedding.create(:service_type => service_type, :activated => true)
    wedding2.service_types_weddings << ServiceTypesWedding.create(:service_type => service_type, :activated => true)
  end
end