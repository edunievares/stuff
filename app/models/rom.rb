class Rom < ActiveRecord::Base
  belongs_to :genre
  belongs_to :platform



  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end

end
