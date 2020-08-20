class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :songs, through: :favorites
end
