require "rspec"
require "../main.rb"

RSpec.describe "Main" do
  it "#foo_return_value_if_word_ends_with_CS" do

    expect(foo(2, 'HelloHelloCS')).to eq(4096)
  end

  it "#foo_return_reversed_word" do

    expect(foo(3, "Reverse")).to eq("esreveR")
  end

  it "#pokemon_2" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "Picka", "Yellow", "Bark", "Black")

    expect(pokemon()).to eq([{name: "Picka", color: "Yellow"}, {name: "Bark", color: "Black"}])
  end

end