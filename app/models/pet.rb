class Pet < ApplicationRecord

  has_many :pet_histories
  belongs_to :client
  
  def historyCount
    #TODO-implement
    self.pet_histories.count
  end

  def avgWeight
    #TODO-implement
    self.pet_histories.average(:weight)
  end

  def avgHeight
    #TODO-implement
    self.pet_histories.average(:heigth)

  end

  def maxWeight
    #TODO-implement
    self.pet_histories.pluck(:weight).max
  end

  def maxHeight
    #TODO-implement
    self.pet_histories.pluck(:heigth).max
  end

end
