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
end
