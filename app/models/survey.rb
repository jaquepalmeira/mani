class Survey < ActiveRecord::Base

  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions,
                                :reject_if => lambda { |a| a[:content].blank? },
                                :allow_destroy => true
  has_many :answers, through: :questions
end
