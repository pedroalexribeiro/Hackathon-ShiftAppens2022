# frozen_string_literal: true

class Donor < ApplicationRecord
  include MoneyUser

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Achivements relations
  has_many :donor_achievements, dependent: :destroy
  has_many :achievements, through: :donor_achievements, source: :donor
  # Donations relations
  has_many :donations, dependent: :destroy
  has_many :events, through: :donations, source: :event

  # Donors relations with themselves, so they can follow one another
  # follower_follows "names" the Follow join table for accessing through the follower association
  has_many :follower_follows, foreign_key: :followee_id, class_name: 'Follower'
  # source: :follower matches with the belong_to :follower identification in the Follow model
  has_many :followers, through: :follower_follows, source: :follower

  # followee_follows "names" the Follow join table for accessing through the followee association
  has_many :followee_follows, foreign_key: :follower_id, class_name: 'Follower'
  # source: :followee matches with the belong_to :followee identification in the Follow model
  has_many :followees, through: :followee_follows, source: :followee

  # Favourite relations
  has_many :favourites, dependent: :destroy
  has_many :organizations, through: :favourites, source: :organization

  # Activities Relations
  has_many :activities, as: :source

  # Active Record Blob to save images
  has_one_attached :avatar, dependent: :destroy
  has_one_attached :banner, dependent: :destroy
end
