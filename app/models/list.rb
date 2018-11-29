class List < ActiveRecord::Base
  
  belongs_to :user
  validates_presence_of :name, :description
  
  has_many :products, dependent: :destroy
accepts_nested_attributes_for :products, reject_if: lambda { |a| a[:name].blank? }, allow_destroy: true
end
