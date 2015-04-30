require("rspec")
require('pry')
require('email')

describe(Email) do
  # before() do
  #   Email.clear()
  # end

  describe('#e_address') do
    it('returns the email address') do
      test_email = Email.new("joe@joe.com")
      expect(test_email.e_address()).to(eq("joe@joe.com"))
    end
  end

  describe('#save') do
    it("it saves the email") do
      test_email = Email.new("joe@joe.com")
      test_email.save()
      expect(Email.all()).to(eq([test_email]))
    end
  end
end
