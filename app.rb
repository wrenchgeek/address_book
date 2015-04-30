require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/email')


get('/') do
  $id = 0
  erb(:index)
end

get('/all_emails') do
  @all_emails = Email.all()
  erb(:all_emails)
end

# get('/all_emails/new') do
#   erb(:email_form)
# end

post('/all_emails') do
  email = params.fetch('email')
  Email.new(email).save()
  @all_emails = Email.all()
  erb(:all_emails)
end

post('/delete_email') do
  # email = params.fetch('email')

  Email.delete(Email.find($id))
  @all_emails = Email.all()
  erb(:all_emails)
end
#
# get('/all_emails/delete') do
#   erb(:email_delete)
# end
