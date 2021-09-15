require "rspec"
require "../main.rb"

RSpec.describe "Main" do
  it "#greeting_return_less_18_message" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Sasha', 'Shapovalov', 17)

    expect(greeting).to eq("Привет, Sasha Shapovalov. Тебе меньше 18, но начать учиться программировать никогда не рано")
  end

  it "#greeting_return_more_or_equal_18_message" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Sasha', 'Shapovalov', 18)

    expect(greeting).to eq("Привет, Sasha Shapovalov. Самое время заняться делом!")
  end

  it "#foobar_return_sum_of_args_if_one_are_not_equal_20_nor_two" do
    expect(foobar(1, 3)).to eq(4)
  end

  it "#foobar_return_second_arg_if_one_of_args_is equal_20" do
    expect(foobar(20, 3)).to eq(3)
    expect(foobar(30, 20)).to eq(20)
  end
end
