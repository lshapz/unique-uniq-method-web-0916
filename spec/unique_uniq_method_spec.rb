describe "unique" do

  it "does not call on the uniq method" do
    numbers = [1, 1, 1, 2, 3, 4, 5, 4]
    expect(numbers).to_not receive(:uniq)
    expect(numbers).to_not receive(:uniq!)
    numbers.unique_uniq
  end

  it "should return only one copy of each number in a redundant array" do
    numbers = [1, 1, 1, 2, 3, 4, 5, 4]
    expect(numbers.unique_uniq).to eq([1, 2, 3, 4, 5])
  end

  it "should return only one copy of each string in a redundant array" do
    pets = ["cat", "dog", "fish", "dog", "cat", "gerbil", "turtle", "turtle"]
    expect(pets.unique_uniq).to eq(["cat", "dog", "fish", "gerbil", "turtle"])
  end

  it "should return only one copy of each element in a redundant array" do
    mixed = ["cat", "dog", 9, nil, "fish", "dog", "cat", nil, 9, 1, 2, 3, 4, 5]
    expect(mixed.unique_uniq).to eq(["cat", "dog", 9, nil, "fish", 1, 2, 3, 4, 5])
  end
end