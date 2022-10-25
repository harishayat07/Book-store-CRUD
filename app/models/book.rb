class Book < ApplicationRecord
    belongs_to :author
    after_destroy :log_destroy_action

    def log_destroy_action
        puts 'books destroyed'
      end
    
end
