class Fixnum
  define_method(:allergies) do
    if self.>(255)
      "Your number is too large"
    else
    bi_score = self.to_s(2).reverse()
    bi_array = bi_score.split("")
    allergy = []
    allergen = ["eggs", "peanuts","shellfish", "strawberries", "tomatoes", "chocolate","pollen", "cats"]
    counter = 0
      bi_array.each() do |array|
        if array.eql?("1")
          allergy.push(allergen.at(counter))
          counter = counter.+(1)
        else
          counter = counter.+(1)
        end
      end
    end
  allergy
  end
end
