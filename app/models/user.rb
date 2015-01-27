class User < ActiveRecord::Base
	validates :username, :presence => { :message => "Username cannot be blank."}
	validates :username, :uniqueness => { :message => "Username is already taken."}
	validates :password, :length => { :minimum => 4, :too_short = >"your password must be at least 4 characters long."}

end
