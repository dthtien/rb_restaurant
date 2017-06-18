class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_profile_with_username

  def owner?(record)
    record.user == self
  end

  private
    def create_profile_with_username
      create_profile(name: email.match(/^(.+?)@/).captures.first)
    end
end
