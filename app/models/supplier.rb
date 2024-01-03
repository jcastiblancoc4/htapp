class Supplier < ApplicationRecord
  #=== Associations
  belongs_to :accoun, class_name: Bank::Accoun.name
end
