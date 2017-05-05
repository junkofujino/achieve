#class Poem < ActiveResource::Base #ActiveRecord::Baseから変更する
#  self.site = "https://protected-crag-19899.herokuapp.com"
#end

class Poem
  include Her::Model
end
