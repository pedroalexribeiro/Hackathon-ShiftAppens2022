# frozen_string_literal: true

class Donor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_secure_password

  # Active Record Blob to save images
  has_one_attached :avatar, dependent: :destroy
  # Achivements relations
  has_many :donor_achievements, dependent: :destroy
  has_many :achievements, through: :donor_achievements
  # Donations relations
  has_many :donations, dependent: :destroy
  has_many :events, through: :donations
end
