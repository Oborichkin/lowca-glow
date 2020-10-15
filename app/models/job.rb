class Job < ApplicationRecord
    has_many :applies
    belongs_to :company

    validates :name, :place, :company_id, presence: true
    validates :company_id, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
    validates :name, :place, length: { maximum: 64 }
end
