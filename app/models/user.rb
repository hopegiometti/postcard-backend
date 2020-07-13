class User < ApplicationRecord
    has_many :postcards, dependent: :destroy
    has_many :responses, dependent: :destroy
end
