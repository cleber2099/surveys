class User < ApplicationRecord
    has_secure_password
  
    has_many :answers
  
    validates :email, presence: true, uniqueness: true
    validates :role, inclusion: { in: %w(coordinator respondent) }
  
    def coordinator?
      role == 'coordinator'
    end
  
    def respondent?
      role == 'respondent'
    end
  end
  