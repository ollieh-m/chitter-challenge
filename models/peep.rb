class Peep

	include DataMapper::Resource
	
	belongs_to :user, required: false
	
	property :id, Serial
	property :content, Text
	property :created_at, DateTime

	def created_at_formatted
		created_at.strftime("%H:%M, %A %-d %b %Y")
	end

end