require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./controllers/bluray_controller.rb')
require_relative('./controllers/suppliers_controller.rb')

get '/' do
  @blurays = BluRay.all()
  erb(:index)
end
