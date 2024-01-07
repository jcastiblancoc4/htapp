class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[ show edit update destroy ]

  def new
    @supplier = Supplier.new
    @supplier.build_accoun
  end

  def create
    @supplier = Supplier.new(supplier_params)
    respond_to do |format|
      if @supplier.save
        # format.html { redirect_to bank_url(@bank), notice: "Bank was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity}
      end
    end
  end

  private
  def supplier_params
     params.require(:supplier).permit(:name, :nit, :name_person_contact, :phone_person_contact, accoun_attributes: [:number, :bank_id])
  end

  def set_supplier
    @Supplier = Supplier.find(params[:id])
  end
end