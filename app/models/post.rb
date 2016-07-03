class Post < ActiveRecord::Base
	belongs_to :user
	validates :category, :inclusion => { :in => ["매매","전세","월세"], :message => "매매,전세,월세 중 하나를 선택하셔야 합니다." }
  validates :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다." }
end
