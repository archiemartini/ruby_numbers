require 'get_expanded_form'

RSpec.describe "get_expanded_form method" do
  
  it "returns a single number correctly" do
    expect(get_expanded_form(1)).to eq "1"
  end

  it "returns a 2 form number correctly" do
    expect(get_expanded_form(11)).to eq '10 + 1'
  end
  it "returns a 2 form number correctly" do
    expect(get_expanded_form(78)).to eq '70 + 8'
  end

  it "returns a 3 form number correctly" do
    expect(get_expanded_form(111)).to eq '100 + 10 + 1'
  end
  
  it "returns a 4 form number correctly" do
    expect(get_expanded_form(1111)).to eq '1000 + 100 + 10 + 1'
  end

  it "returns a 5 form number correctly" do
    expect(get_expanded_form(11111)).to eq '10000 + 1000 + 100 + 10 + 1'
  end

  it "returns a fucker correctly" do
    expect(get_expanded_form(70304)).to eq "70000 + 300 + 4"
  end
end