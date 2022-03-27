require "i18n"

allergens = %w{Altramuz Apio Cacahuetes Crustáceos Frutos\ Secos Gluten Huevo Lácteos Moluscos Mostaza Pescado Sésamo Soja Sulfitos}

allergens.each do |allergen|
  obj = Allergen.create(name: allergen)
  icon_name = I18n.transliterate(allergen).downcase.gsub(/\s+/, "")
  obj.icon.attach(io: File.open(Rails.root.join("app/assets/images/allergens/#{icon_name}.png")), filename: "#{icon_name}.png")
  obj.save!
end

User.create!({ email: "javieralvarez2.ja@gmail.com", password: "111111" })
