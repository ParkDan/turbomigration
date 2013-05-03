# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

process_hashes= [{name: 'Concurrent Application'}, {name: 'Naturalization'}, {name: 'Employment Card'}, {name: 'Replacement Green Card'}, {name: 'Petition for Alien Fiance'}, {name: 'Application to Extend/Change Nonimmigrant Status'}, {name: 'Petitions to Remove the Conditions of Residence'}]

form_hashes=[{source: 'Concurrent Application', name: '', process_id: ' ' }, {source: 'Concurrent
Application', name: '', process_id: ' ' }, {source: 'Concurrent Application', name: '', process_id:
' ' }, {source: 'Concurrent Application', name: '', process_id: ' ' }, {source: 'Concurrent
Application', name: '', process_id: ' ' } ]

Process.destroy_all
Form.destroy_all

process_hashes.each do |p_hash|
  p=Process.new
  p.name=p_hash[:name]
  p.save
end

form_hashes.each do |f_hash|
  f=Form.new
  f.name=f_hash[:name]
  f.source=f_hash[:source]
  f.process_id=hash[:process_id]
  f.save
end


