class Contact

  @@contacts = []
  @@c_index = 0

  attr_reader(:first, :last, :addresses, :phones, :emails, :c_id)

  define_method(:initialize) do |attributes|
    @first = attributes.fetch(:first)
    @last = attributes.fetch(:last)
    @addresses =[]
    @phones = []
    @emails = []
    @@c_index = @@c_index += 1
    @c_id = @@c_index
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_method(:add_phone) do |phone|
    @phones.push(phone)
  end

  define_method(:add_address) do |address|
    @addresses.push(address)
  end

  define_method(:add_email) do |email|
    @emails.push(email)
  end

  define_singleton_method(:clear) do
    @@contacts = []
    @@c_index = 0
  end

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.c_id() == id.to_i
        found_contact = contact
      end
    end
    found_contact
  end

  define_singleton_method(:delete) do |contact|
    to_delete = contact.c_id()
    @@contacts.delete_if {|contact| contact.c_id().eql?(to_delete)}
  end

  define_singleton_method(:del_add) do |address|
    target_address = address
    @addresses.delete_if{|inside_address| inside_address.eql?(target_address)}
  end

  define_singleton_method(:del_ph) do |phone|
    target_phone = phone
    @phone.delete_if{|inside_phone| inside_phone.eql?(target_phone)}
  end

  define_singleton_method(:del_em) do |email|
    target_email = email
    @emails.delete_if{|inside_email| inside_email.eql?(target_email)}
  end


end
