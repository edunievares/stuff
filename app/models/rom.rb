class Rom < ActiveRecord::Base
  belongs_to :genre
  belongs_to :platform



  def self.search(search)
    if search
      self.where('name like :search or comment like :search or platform_id in (select id from platforms where name like :search)', search: "%#{search}%")
    else
      self.all
    end
  end

end
