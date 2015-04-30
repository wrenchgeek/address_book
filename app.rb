require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')


get('/') do
@all_contacts = Contact.all()
  erb(:index)
end

post('/all_contacts') do
  first = params.fetch('first_name')
  last = params.fetch('last_name')
  Contact.new({:first => first,:last => last}).save()
  @all_contacts = Contact.all()
  erb(:index)
end

post('/delete_contacts') do
  contact_num = params.fetch('contact_id')

  Contact.delete(Contact.find(contact_num))
  @all_contacts = Contact.all()
  erb(:index)
end

get('/single_contact/:id') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:single_contact)
end

post('add_phone/:id') do
  area = params.fetch('area')
  number = params.fetch('number')
  type = params.fetch('type')
  phone = Phone.new({area => 'area', number => 'number', type => 'type'})
  @contact = Contact.find(params.fetch('id').to_i())
  @contact.add_phone(phone)
  erb(:single_contact)
end
#
# get('/all_emails/delete') do
#   erb(:email_delete)
# end
