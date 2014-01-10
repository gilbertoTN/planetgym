class Partner < ActiveRecord::Base

  attr_accessible :address, :background, :birthday, :colony, :entry, :name, :observations, :phone, :sex, :email, :image, :uid,:provider, :link,:active,:publish, :number_partner, :status

  validates :address, :background, :birthday, :colony, :entry, :name,  :phone, :sex, :email, :image, :uid,:provider,:number_partner, :status, :presence => true

  validates :number_partner, :uniqueness => true
  validates_numericality_of :number_partner, :greater_than => 0

  def self.from_omniauth(auth)
    where(auth.slice(:provider,:uid)).first_or_initialize.tap do |partner|
    partner.name     = auth.info.name
    partner.email    = auth.extra.raw_info.email
    partner.address  = auth.extra.raw_info.location.defined? ? auth.extra.raw_info.location.name : "Direccion no encontrada"
    partner.birthday = auth.extra.raw_info.birthday
    partner.sex      = auth.extra.raw_info.gender
    partner.image    = auth.info.image
    partner.active   = false
    partner.publish  = false
    partner.save(:validate => false)
    end
  end


end
