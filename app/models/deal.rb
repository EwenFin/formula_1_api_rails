class Deal < ActiveRecord::Base
  belongs_to :driver
  belongs_to :sponsor
  belongs_to :team
end
