class Resume < ApplicationRecord
    has_many :skills, dependent: :destroy
    has_many :languages, dependent: :destroy
end
