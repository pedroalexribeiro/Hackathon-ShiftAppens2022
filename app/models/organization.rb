# frozen_string_literal: true

class Organization < ApplicationRecord
  include MoneyUser

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Events relations
  has_many :events, dependent: :destroy

  # Activities Relations
  has_many :activities, as: :source

  # Achivements Relations
  has_many :achievements

  # Active Record Blob to save images
  has_one_attached :avatar, dependent: :destroy
  has_one_attached :banner, dependent: :destroy
end
