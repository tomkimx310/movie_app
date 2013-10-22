class Movie < ActiveRecord::Base

	validates :name, :genre, presence: :true
	validates :name, :genre, length: { minimum: 1 }
	validates :name, uniqueness: { message: "Movie already entered"}

	def self.search(search)
		if search
			find(:all, conditions: ['name LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end

end
