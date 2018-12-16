require_relative('../models/bluray.rb')
require_relative('../models/supplier.rb')


# SHOW ALL
get '/suppliers' do
  @suppliers = Supplier.all()
  erb(:"suppliers/index")
end


#  NEW supplier
get '/suppliers/new' do
  @suppliers = Supplier.all()
  @blurays = BluRay.all()
  erb( :"suppliers/new" )
end


# SAVE
post '/suppliers' do
  Supplier.new(params).save
  redirect to '/suppliers'
end


# EDIT
get '/suppliers/:id/edit' do
   @blurays = BluRay.all
  @supplier = Supplier.find( params['id'] )
  erb( :"suppliers/edit" )
end

#UPDATE
post '/suppliers/:id' do
  supplier = Supplier.new(params)
  supplier.update
  redirect to "/suppliers"
end

#DESTROY
post '/suppliers/:id/delete' do
  supplier = Supplier.find(params[:id])
  supplier.delete()
  redirect to "/suppliers"
end
