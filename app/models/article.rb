class Article < ActiveRecord::Base
  attr_accessible :content, :name, :published_on, :search

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
