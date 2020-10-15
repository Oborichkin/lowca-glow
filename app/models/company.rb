class Company < ApplicationRecord
    has_many :jobs

    validates_associated :jobs

    validates :name, :location, presence: true
    validates :name, :location, length: { maximum: 64 }
end
