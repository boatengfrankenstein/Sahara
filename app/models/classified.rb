class Classified < ApplicationRecord
    validates_presence_of :title 
    validates_presence_of :price 
    validates_presence_of :location 
    validates_presence_of :description 
    validates_numericality_of :price 
    validates_presence_of :images, file_size: { less_than: 40.megabytes }
   
    mount_uploaders :images, ImageUploader
    belongs_to :category 
    belongs_to :user
    has_many :conversations
    
    protected 
    def validate 
      errors.add(:price, "should be a positive value") if price.nil? || price < 0.01 
    end 

    def self.search(term)
      where('LOWER(title) LIKE :term OR LOWER(description) LIKE :term OR LOWER(location) LIKE :term', term: "%#{term.downcase}%")
    end
end