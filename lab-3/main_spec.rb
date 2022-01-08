#!/usr/bin/ruby
require 'rspec'
require_relative '../lib.rb'
require_relative 'task2.rb'
require_relative 'task3.rb'

FILE = "file.txt"

RSpec.describe "LW3" do
  before {
    File.write(FILE, "one\ntwo\nthree")
    @balance = 1000.0
  }

  it "#index" do
    expect(index(FILE)).to eq(nil)
  end

  it "#find" do
    expect(find(FILE, 1)).to eq("two\n")
  end

  it "#where" do
    expect(where(FILE, "two")).to eq([1])
  end

  it "#update" do
    expect(update(FILE, 0, "New")).to eq(1)
  end

  it "#delete" do
    expect(delete(FILE, 1)).to eq(1)
  end

  it "#find_stud_with_age" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('20', '-1')

    expect(find_stud_with_age).to eq(nil)
  end

  it "#find_stud_with_age" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('20', '21', '22', '23', '25', '31', '-1')

    expect(find_stud_with_age).to eq(nil)
  end

  it "#deposit" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('100.0')

    expect(deposit).to eq(1100)
  end

  it "#deposit, incorrect count (not number)" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('String')

    expect(deposit).to eq('error')
  end

  it "#deposit, incorrect count (< 0)" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('-100')

    expect(deposit).to eq(1000)
  end

  it "#withdraw" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('100.0')

    expect(withdraw).to eq(900)
  end

  it "#withdraw, incorrect count (not number)" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('String')

    expect(withdraw).to eq('error')
  end

  it "#withdraw, incorrect count (< 0)" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('-100')

    expect(withdraw).to eq(1000)
  end

  it "#withdraw, incorrect count (> balance)" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('1100')

    expect(withdraw).to eq(1000)
  end
end