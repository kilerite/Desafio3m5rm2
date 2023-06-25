class Cerie < ApplicationRecord
    validates :name, :synopsis, :director, presence: true
end
