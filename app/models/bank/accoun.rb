class Bank::Accoun < ApplicationRecord

  #=== Associations
  belongs_to :bank, class_name: Bank.name
  has_one :supplier, class_name: Supplier.name

end
