class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end
 
class Person < ApplicationRecord
  validates :email, presence: true, email: true
end
class Invoice < ApplicationRecord
  validate :active_customer, on: :create
 
  def active_customer
    errors.add(:customer_id, "is not active") unless customer.active?
  end
end