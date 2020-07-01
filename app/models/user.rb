class User < ApplicationRecord
    has_many :postcards
    has_many :responses
end
