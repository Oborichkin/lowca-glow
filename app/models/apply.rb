class Apply < ApplicationRecord
    belongs_to :job
    belongs_to :geek

    def delete_apply
        self.update(deleted: true)
    end
end
