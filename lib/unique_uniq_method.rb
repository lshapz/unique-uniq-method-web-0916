class Array
  def unique_uniq
    # code goes here
    array = self
    new_array = []
    array.each do |item| 
      if !new_array.include?(item)
        new_array.push(item)
      end
    end
    new_array


  end
end