class PhoneNumber

  def initialize(phone)
    @phone = phone
  end

  def number
    return "0000000000" unless phone.scan(/[a-zA-Z]/).empty?

    number = phone.scan(/\d*/).join

    if number.length != 10
      if number.length == 11 && number.chr == "1"
        number = number[1..-1]
      else
        number = "0000000000"
      end
    end

    number
  end


  private

  attr_reader :phone

end