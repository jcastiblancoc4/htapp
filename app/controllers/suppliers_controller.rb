class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[show edit update destroy]
  before_action :set_locale!

  def set_locale!
    I18n.locale = :es
  end

  def new
    @supplier = Supplier.new
    @supplier.build_accoun
    @banks = Bank.all
  end

  def show
  end

  def create
    @supplier = Supplier.new(supplier_params)
    respond_to do |format|
      if @supplier.save
        format.html { redirect_to supplier_url(@supplier), notice: "El proveedor fue creado exitosamente." }
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
    @supplier = Supplier.find(params[:id])
  end
end