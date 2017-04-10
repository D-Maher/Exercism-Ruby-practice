class PhoneNumber

  def initialize(phone)
    @phone = phone
  end

  def number
    number = phone.scan(/\d*/).join
  end


  private

  attr_reader :phone

end