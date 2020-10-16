class Geek < ApplicationRecord
    has_many :applies

    validates :name, :stack, :cv, presence: true

    def delete_geek
        self.update(deleted: true)
    end
end
