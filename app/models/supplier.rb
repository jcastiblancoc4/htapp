class Supplier < ApplicationRecord

  #=== Associations
  belongs_to :accoun, class_name: Bank::Accoun.name
  accepts_nested_attributes_for :accoun

  validates :name, :name_person_contact, presence: { message: I18n.t("supplier.model.validate_empty")}
  validates :phone_person_contact, presence: false, length: { maximum: 10 }

end
