# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', city: cities.first)

puts "create cities"
City.create([{:name => 'Chicago' },
                      {:name => 'Copenhagen'}
                      ], :without_protection => true)

puts 'create areas'
Area.create([{:name => 'area1', :city_id => 1 },
                     {:name => 'area2', :city_id => 1 },
                     {:name => 'area21', :city_id => 2 },
                     {:name => 'area22', :city_id => 2 }
                     
                     ], :without_protection => true)

puts "create neighborhood"
Neighborhood.create([{:name => 'neighborhood1', :area_id => 1 },
                                     {:name => 'neighborhood2', :area_id => 1 },
                                     {:name => 'neighborhood21', :area_id => 2 },
                                     {:name => 'neighborhood21', :area_id => 2 },
                                     {:name => 'neighborhood31', :area_id => 3 },
                                     {:name => 'neighborhood31', :area_id => 3 },
                                     {:name => 'neighborhood41', :area_id => 4 },
                                     {:name => 'neighborhood41', :area_id => 4 }
                                     ], :without_protection => true)

puts 'all seeds completed.'