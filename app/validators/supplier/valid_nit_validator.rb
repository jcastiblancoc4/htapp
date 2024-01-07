class Supplier::ValidNitValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)

    valid = /^([0-9]{9}-{1}[0-9]{1})$/.match(value)
    record.errors.add(attribute, :valid_nit) if valid.nil?
  end

end
