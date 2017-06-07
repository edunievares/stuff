class Pelicula < ActiveRecord::Base
  belongs_to :paise

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
      self.where('name like :search or director like :search', search: "%#{search}%")
    else
      self.all
    end
  end
end
