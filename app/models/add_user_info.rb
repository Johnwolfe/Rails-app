class AddUserInfo < ActiveRecord::Base
	
		add_column :users, :fname, :string, :lname, :string
		:email, :string

		add_column :posts, :user_id, :integer, :body, :text

end
