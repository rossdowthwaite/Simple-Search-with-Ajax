class Project < ActiveRecord::Base

	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end
end
