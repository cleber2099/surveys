class Question < ApplicationRecord
    belongs_to :survey
    has_many :answers, dependent: :destroy
  
    validates :content, presence: true
    validates :input_type, presence: true
  
    serialize :options, Array #multiplas escolhas
  end
  