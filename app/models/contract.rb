class Contract < ActiveRecord::Base
  belongs_to :driver
  belongs_to :team
end