class Postcard < ApplicationRecord
    has_many :responses, dependent: :destroy
    belongs_to :user
end
