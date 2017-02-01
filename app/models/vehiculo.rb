class Vehiculo < ApplicationRecord

  include ActiveModel::Validations

  has_many :prestamos
  accepts_nested_attributes_for :prestamos
  has_many :orden_combustibles
  accepts_nested_attributes_for :orden_combustibles
  has_many :orden_mantenimientos
  accepts_nested_attributes_for :orden_mantenimientos

  mount_uploaders :avatars, AvatarUploader

  #has_attached_file :image, styles: { medium: '400x400>', thumb: '48x48>' }

  # validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  #do_not_validate_attachment_file_type :image

  # Validaciones de campo requerido

  validates_presence_of :placa
  validates_presence_of :marca
  validates_presence_of :modelo
  validates_presence_of :color
  validates_presence_of :kilometraje
  validates_presence_of :capacidadPasajeros
  validates_presence_of :anio


  validates :kilometraje, numericality: { only_integer: true }

  validates :capacidadPasajeros, numericality: { only_integer: true, :less_than_or_equal_to => 50}

  validates :anio, numericality: { only_integer: true, :less_than_or_equal_to => 2050 }




  validates_format_of :placa, :with => /^[A-Z][A-Z][A-Z][-][0-9]{4}$/, :multiline => true

end
