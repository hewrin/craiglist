require_relative '../models/post'


get '/' do
  # Look in app/views/index.erb
  @category = Category.all
  erb :index
end


