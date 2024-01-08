class Supplier < ApplicationRecord

  #=== Associations
  belongs_to :accoun, class_name: Bank::Accoun.name
  accepts_nested_attributes_for :accoun

  #=== Validations
  validates :name, presence: { message: I18n.t("supplier.model.validate_empty_name")}
  validates :name_person_contact, presence: { message: I18n.t("supplier.model.validate_empty_name_person_contact")}
  validates :phone_person_contact, presence: false, length: { maximum: 10 }
  validates :nit, :'supplier/valid_nit' => true

end
