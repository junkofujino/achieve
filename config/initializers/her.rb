# config/initializers/her.rb
Her::API.setup url: "https://protected-crag-19899.herokuapp.com" do |c|
    # Request
    c.use Faraday::Request::UrlEncoded
    
    # Response
    c.use Her::Middleware::DefaultParseJSON
    
    # Adapter
    c.use Faraday::Adapter::NetHttp
end
