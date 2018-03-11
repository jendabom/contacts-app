class Contact < ApplicationRecord
  def as_json
    { 
      full_name: full_name,
      email: email, 
      phone_number: phone_number_with_japan_country_code, 
      created_at: created_date_pretty,
      updated_at: updated_date_pretty
    }
  end

  def created_date_pretty
    created_at.strftime("%b %d, %Y")
  end

  def updated_date_pretty
    updated_at.strftime("%b %e %Y at%l:%M%p")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def phone_number_with_japan_country_code
    japan_country_code = "+81"
    "#{japan_country_code} #{phone_number}"
  end
end
