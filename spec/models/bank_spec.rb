require 'rails_helper'

RSpec.describe Bank, type: :model do

  describe 'fields' do
    it { should have_db_column(:name).of_type(:string) }
  end

  it 'check name field validation to create bank' do
    expect(Bank.create(name: "").valid?).to eq(false)
    expect(Bank.create(name: nil).valid?).to eq(false)
    expect(Bank.create(name: "bancolombiabancolombiabancolombiabancolombiabancolombia").valid?).to eq(false)
    expect(Bank.create(name: "bancolombia").valid?).to eq(true)
  end

end
