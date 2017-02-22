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
	

	# require 'csv'

	# def self.import(file)

	# 	CSV.foreach(file.path, {col_sep: ',', headers: true}) do |row|
			
	# 		User.create! row.to_hash

	# 	end
	# end


	
end