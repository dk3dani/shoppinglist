class User < ActiveRecord::Base

    has_many :lists
    validates_presence_of :name
end
