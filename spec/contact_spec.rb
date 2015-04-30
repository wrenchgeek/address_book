require("rspec")
require('pry')
require('contact')
require('phone')
require('address')
require('email')


describe(Contact) do
  # before() do
  #   Phone.clear()
  # end

  describe('#contact') do
    it('returns the contact') do
      test_contact = Contact.new({:first => "bob", :last =>"deck"})
      phone = Phone.new({:area => 123, :number => 1234567, :type => "cell"})
      address = Address.new({:street_address => "123 hell", :city => "potlandia", :state => "mother russia", :zip => 12345})
      email = Email.new({:email => "be@be.com"})
      test_contact.add_phone(phone)
      test_contact.add_address(address)
      test_contact.add_email(email)
      expect(test_contact.emails()[0].email()).to(eq("be@be.com"))
      expect(test_contact.phones()[0].area()).to(eq(123))
    end
  end
end
