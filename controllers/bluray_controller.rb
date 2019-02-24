require_relative('../models/bluray.rb')
require_relative('../models/supplier.rb')

# SHOW ALL
# get '/blurays' do
#   @blurays = BluRay.all
#   erb(:"blurays/index")
# end

# NEW
get '/blurays/new' do
  @suppliers = Supplier.all
  erb(:"/blurays/new")
end

get '/blurays/filter/:stock_level' do
if params[:stock_level] == "out_of_stock"
  @blurays = BluRay.list_out_of_stock
    erb(:index)
  elsif params[:stock_level] == "low_stock"
      @blurays = BluRay.list_low_stock
      erb(:index)
  elsif params[:stock_level] == "in_stock"
      @blurays = BluRay.list_in_stock
      erb(:index)
    end
end



# out of stock needs to be above /blurays/:id
# get '/blurays/out_of_stock' do
#   @blurays = BluRay.list_out_of_stock()
#   erb(:"/blurays/out_of_stock")
# end


# in stock needs to be above /blurays/:id
# get '/blurays/in_stock' do
#   @blurays = BluRay.list_in_stock()
#   erb(:"/blurays/in_stock")
# end


# low stock needs to be above /blurays/:id
# get '/blurays/low_stock' do
#   @blurays = BluRay.list_low_stock()
#   erb(:"/blurays/low_stock")
# end

# SHOW
get '/blurays/:id' do
  @bluray = BluRay.find(params['id'])
  erb(:"/blurays/show")
end

# SAVE
post '/blurays' do
  BluRay.new(params).save
  redirect to '/'
end

# EDIT
get '/blurays/:id/edit' do
  @suppliers = Supplier.all
  @bluray= BluRay.find( params['id'] )
  erb( :"blurays/edit" )
end

# UPDATE
post '/blurays/:id' do
  bluray = BluRay.new(params)
  bluray.update
  redirect to "/blurays/#{params['id']}"
end

# DESTROY
post '/blurays/:id/delete' do
  bluray = BluRay.find(params[:id])
  bluray.delete()
  redirect to "/"
end
