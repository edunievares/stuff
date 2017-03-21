class Genre < ActiveRecord::Base
  has_many :rom

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end

end

