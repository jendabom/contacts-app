class Contact < ApplicationRecord
  def as_json
    { 
      full_name: full_name,
      email: email, 
      phone_number: phone_number_with_japan_country_code, 
      created_at: created_date_pretty
    }
  end

  def created_date_pretty
    created_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def phone_number_with_japan_country_code
    japan_country_code = "+81"
    "#{japan_country_code} #{phone_number}"
  end
end
