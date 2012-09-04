class Offer < ActiveRecord::Base
  attr_accessible :city, :company, :details, :discount, :expire_date, :featured, :heading, :phone, :price, :state, :street, :terms, :zip
end
