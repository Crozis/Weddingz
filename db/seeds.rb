# Encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

caterer_type        = ServiceType.create(name: 'Traiteurs')
accomodation_type   = ServiceType.create(name: 'Hébergements')
photographs_type    = ServiceType.create(name: 'Photographes')
animation_type      = ServiceType.create(name: 'Animations')
decoration_type     = ServiceType.create(name: 'Décorations')

require File.dirname(__FILE__) + '/services_seed/florists_seed.rb'
require File.dirname(__FILE__) + '/services_seed/places_seed.rb'
require File.dirname(__FILE__) + '/services_seed/caterer_seed.rb'

client    = Users::Client.create(username: 'client', password: 'password')
organizer = Users::Organizer.create(username: 'organizer', password: 'password')
wedding   = Wedding.create(budget:             4000, 
                           place:              "Nice", 
                           nb_person:          40, 
                           nb_child:           0, 
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
                           desired_atmosphere: 'Petit commité')
                                 

client2    = Users::Client.create(username: 'client2', password: 'password')
wedding2 = Wedding.create(budget:             4000, 
                          place:              "Nice", 
                          nb_person:          200, 
                          nb_child:           30, 
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
                          desired_atmosphere: 'Festif')
                                 
