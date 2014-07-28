class Array
  def unique_uniq
    array = []
    self.each do |element| 
      if array.include?(element) == false
        array << element 
      end
    end
    array
  end
end