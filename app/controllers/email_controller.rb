class EmailController < ApplicationController
	def email_form
	end

	def email_send
		@email = params[:email]
		@title = params[:title]
		@content = params[:content]

		gmail = Gmail.connect("yongred05@gmail.com","1111")
		gmail.deliver do
			to email
			subject title
			text_part do
				body cotent
			end
		end

		gmail.logout
	end
end
