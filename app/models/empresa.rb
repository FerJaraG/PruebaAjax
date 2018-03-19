class Empresa < ApplicationRecord
	has_many :reclamos, dependent: :destroy
end
