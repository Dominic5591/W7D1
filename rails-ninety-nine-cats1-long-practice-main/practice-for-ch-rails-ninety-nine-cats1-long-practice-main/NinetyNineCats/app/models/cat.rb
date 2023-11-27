require "action_view"

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates :birth_date, presence: true
  validates :color, presence: true
  validates :name, presence: true
  validates :sex, presence: true


  validates :color, inclusion: { in: ["Black", "Grey", "Brown", "White", "Orange"] }
  validates :sex, inclusion: { in: ["M", "F"] }


  validate  :birth_date_cannot_be_future

  def age
    time_ago_in_words(birth_date)
  end


  private

  def birth_date_cannot_be_future
    if birth_date > Date.today
      errors.add(:birth_date, "cannot be in the future")
    end
  end
end
