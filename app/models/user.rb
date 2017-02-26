class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
	has_secure_password
	acts_as_messageable


	def mailboxer_name
		self.name
	end

	def mailboxer_email(object)
		self.email
	end

	def full_name
		self[:first_name]+" "+self[:last_name]
	end
	



	# require 'csv'

	# def self.import(file)

	# 	CSV.foreach(file.path, {col_sep: ',', headers: true}) do |row|
			
	# 		User.create! row.to_hash

	# 	end
	# end


	
end