class User < ActiveRecord::Base
	has_secure_password

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])

	end

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates_confirmation_of :email, :password

end
