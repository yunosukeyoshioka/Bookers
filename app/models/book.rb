class Book < ApplicationRecord
	#エラー表示用validation
	validates :title, :body, presence: true
end
