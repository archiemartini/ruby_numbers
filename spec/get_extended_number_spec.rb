require 'get_expanded_form'

RSpec.describe "get_expanded_form method" do
  
  it "returns a single number correctly" do
    expect(get_expanded_form(1)).to eq 1
  end

end