class Bank < ApplicationRecord

  #=== Associations
  has_many :accounts, class_name: Bank::Accoun.name

  #=== Validations
  validates :name, presence: { message: I18n.t("bank.model.validate_empty")}
  validates :name, length: { maximum: 50, message: I18n.t("bank.model.validate_size") }

end
