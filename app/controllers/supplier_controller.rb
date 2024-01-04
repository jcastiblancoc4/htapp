class SupplierController < ApplicationController

  def new
    @supplier = Supplier.new
    @supplier.build_accoun
  end

  def create
    @Supplier = Supplier.new(supplier_params)
  end

  private
  def supplier_params
     params.require(:supplier).permit(:name, :nit, :name_person_contact, :phone_person_contact, accoun_attributes: [:number, :bank_id])
  end
end