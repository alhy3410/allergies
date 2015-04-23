class Fixnum
  define_method(:allergies) do
    if self.>(255)
      "Your number is too large"
    else
    bi_score = self.to_s(2).reverse()
    bi_array = bi_score.split("")
    allergy = []
    allergen = ["<li>eggs</li>", "<li>peanuts</li>","<li>shellfish</li>", "strawberries", "tomatoes", "chocolate","pollen", "cats"]
      bi_array.each_index() do |index|
        if bi_array[index].==("1")
          allergy.push(allergen.at(index))
        end
      end
    end
  allergy
  end
end
