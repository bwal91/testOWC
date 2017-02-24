class User < ApplicationRecord

	acts_as_messageable

	
	has_many :chat_rooms, dependent: :destroy
	has_many :chat_messages, dependent: :destroy

	def mailboxer_name
		self.name
	end

	def mailboxer_email(object)
		self.email
	end

	def full_name
		self[:first_name]+" "+self[:last_name]
	end
	
	# def self.search(term)
	# 	params[:term].downcase!
	# 	where("lower(first_name) LIKE '#{:term}' or lower(last_name) LIKE '#{:term}'")
	# end
	# def recipients
	# 	recipient.try(:name)
	# end

	# def recipients=(term)
	# 	self.recipient = User.where("lower(first_name) LIKE '#{:term}' or lower(last_name) LIKE '#{:term}'")
	# end


	# require 'csv'

	# def self.import(file)

	# 	CSV.foreach(file.path, {col_sep: ',', headers: true}) do |row|
			
	# 		User.create! row.to_hash

	# 	end
	# end


	
end