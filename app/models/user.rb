class Validator < ActiveModel::Validator
   def validate(record)
     if record.birthdate==nil || record.birthdate >= Date.today
         record.errors.add :birthdate, "invalid birthdate"
       end
    end
end

class User < ApplicationRecord
    validates :firstname,:lastname, presence: true
    validates_with Validator
    validates :gender,presence: {message:'You must select gender'}
    validates :address,length: {maximum:15,message:'Maximum %{count} characters allowed'}
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true
    validates :password, confirmation: { case_sensitive: true }
    validates :phoneno,:alternatephoneno, format: { with: /[0-9]\d*|0\d+/,message: "Invalid Phone No" }
    validates :email, format: { with: /[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+/,message: "Invalid Email Id" }
    #validates :terms_and_condition, acceptance: {message:'T&C must be accepted'}
    #validates :title, confirmation: true
    
    #validates :discription, exclusion: { in: %w(www us ca jp),message: "%{value} is reserved." }
    #validates :title, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
    #validates :title, inclusion: { in: %w(small medium large),message: "%{value} is not a valid size" }
    
    
end
