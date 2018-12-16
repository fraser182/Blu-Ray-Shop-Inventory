require('sinatra')
require('sinatra/contrib/all')

require_relative('./controllers/bluray_controller.rb')
require_relative('./controllers/suppliers_controller.rb')
also_reload('./models/*')

get '/' do
  @blurays = BluRay.all()
  erb(:index)
end
