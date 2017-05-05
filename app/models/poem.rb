class Poem < ActiveResource::Base #ActiveRecord::Baseから変更する
  self.site = "https://protected-crag-19899.herokuapp.com"
  #self.prefix = '/poems/:id/'
end
