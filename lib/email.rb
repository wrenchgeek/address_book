class Email

  @@emails = []
  @@e_index = 0

  attr_reader(:e_address, :e_id)

  define_method(:initialize) do |e_address|
    @e_address = e_address
    @@e_index = @@e_index += 1
    @e_id = @@e_index
  end

  define_singleton_method(:all) do
    @@emails
  end

  define_method(:save) do
    @@emails.push(self)
  end

  define_singleton_method(:clear) do
    @@emails = []
    @@e_index = 0
  end

  define_singleton_method(:find) do |id|
    found_email = nil
    @@emails.each() do |email|
      if email.e_id() == id.to_i
        found_email = email
      end
    end
    found_email
  end

  define_singleton_method(:delete) do |email|
    to_delete = email.e_id()
    @@emails.delete_if {|email| email.e_id().eql?(to_delete)}
  end



end
