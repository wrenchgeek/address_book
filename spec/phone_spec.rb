# require("rspec")
# require('pry')
# require('phone')
#
#
# describe(Phone) do
#   # before() do
#   #   Phone.clear()
#   # end
#
#   describe('#phone_number') do
#     it('returns the phone number') do
#       test_phone = Phone.new({:area => 111, :number => 1234567, :type => "cell"})
#       expect(test_phone.area()).to(eq(111))
#       expect(test_phone.number()).to(eq(1234567))
#       expect(test_phone.type()).to(eq("cell"))
#     end
#   end
# #
# #   describe('#save') do
# #     it("it saves the email") do
# #       test_email = Email.new("joe@joe.com")
# #       test_email.save()
# #       expect(Email.all()).to(eq([test_email]))
# #     end
# #   end
# #
# #   describe('.clear') do
# #     it("clears the @@emails array") do
# #       test_email = Email.new("joe@joe.com")
# #       test_email.save()
# #       Email.clear()
# #       expect(Email.all()).to(eq([]))
# #     end
# #   end
# #
# #   describe('@id') do
# #     it("returns the id of the email address") do
# #       test_email = Email.new("joe@joe.com")
# #       test_email2 = Email.new("eric@eric.com")
# #       expect(test_email.e_id()).to(eq(1))
# #       expect(test_email2.e_id()).to(eq(2))
# #     end
# #   end
# #
# #   describe('.find') do
# #     it("returns the email based on the id") do
# #       test_email = Email.new("joe@joe.com")
# #       test_email.save()
# #       test_email2 = Email.new("eric@eric.com")
# #       test_email2.save()
# #       expect(Email.find(test_email2.e_id())).to(eq(test_email2))
# #     end
# #   end
# #
# #   describe('.delete') do
# #     it("deletes an email from the email array") do
# #       test_email = Email.new("joe@joe.com")
# #       test_email.save()
# #       test_email2 = Email.new("eric@eric.com")
# #       test_email2.save()
# #       Email.delete(test_email2)
# #       expect(Email.all()).to(eq([test_email]))
# #     end
# #   end
# end
