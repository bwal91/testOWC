class MessagesController < ApplicationController

	before_filter :require_login
	
	
	def inbox
		@inbox = mailbox.inbox
		@active = :inbox
	end

	def sent
		@sent = mailbox.sentbox
		@active = :sent
	end

	def trash
		@trash = mailbox.trash
		@active = :trash

	end

end
