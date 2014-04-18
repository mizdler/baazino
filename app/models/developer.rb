class Developer < ActiveRecord::Base
  belongs_to :developer_account
  belongs_to :user
end
