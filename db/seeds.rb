# Encoding: UTF-8

accomodation_type   = ServiceType.create(name: 'Hébergements')
decoration_type     = ServiceType.create(name: 'Décorations')

require File.dirname(__FILE__) + '/services_seed/florists_seed.rb'
require File.dirname(__FILE__) + '/services_seed/places_seed.rb'
require File.dirname(__FILE__) + '/services_seed/caterer_seed.rb'
require File.dirname(__FILE__) + '/services_seed/photographs_seed.rb'
require File.dirname(__FILE__) + '/services_seed/animator_seed.rb'

client    = Users::Client.create(username: 'client', password: 'password')
organizer = Users::Organizer.create(username: 'organizer', password: 'password')
wedding   = Wedding.create(budget:             4000, 
                           place:              "Nice", 
                           nb_person:          40, 
                           has_child:          false, 
                           client:             client, 
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
                                 

client2    = Users::Client.create(username: 'client2', password: 'password')
wedding2 = Wedding.create(budget:             4000, 
                          place:              "Nice", 
                          nb_person:          200, 
                          has_child:          true, 
                          client:             client2,
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
                           service_types: [ServiceType.where(:name => 'Fleuristes').first,
                                           ServiceType.where(:name => 'Traiteurs').first,
                                           ServiceType.where(:name => 'Lieux').first])
                                 
ServiceType.all.each do |service_type|
  if service_type.name == "Animations"
    wedding.service_types_weddings << ServiceTypesWedding.create(:service_type => service_type, :activated => false)
    wedding2.service_types_weddings << ServiceTypesWedding.create(:service_type => service_type, :activated => false)
  else
    wedding.service_types_weddings << ServiceTypesWedding.create(:service_type => service_type, :activated => true)
    wedding2.service_types_weddings << ServiceTypesWedding.create(:service_type => service_type, :activated => true)
  end
end