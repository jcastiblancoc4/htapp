class Bank::Accoun < ApplicationRecord

  #=== Associations
  belongs_to :bank, class_name: Bank.name
  has_one :supplier, class_name: Supplier.name

  validates :number, presence: false, length: { maximum: 15 }
end
