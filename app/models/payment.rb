class Payment < ApplicationRecord
	require 'csv'

	def self.import(file)

		CSV.foreach(file.path, {col_sep: ',', headers: true}) do |row|

			Payment.create! row.to_hash

		end
	end
end