class Bank < ApplicationRecord

  validates :name, presence: { message: "Datos necesario"}
  validates :name, length: {maximum: 50, message: "maximo 50 caracteres"}
end
