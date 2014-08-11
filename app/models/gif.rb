class Gif < ActiveRecord::Base

  validates :url, presence:{:message => "Can't be blank"}
  validates :title, presence:{:message => "Can't be blank"}

end