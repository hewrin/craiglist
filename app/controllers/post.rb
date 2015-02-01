get "/categories/:c_id/posts/new" do
  erb :'posts/new'
end


get "/categories/:c_id/posts/:p_id" do
  @post = Post.where(name: params[:p_id]).first

  erb :'posts/show'
end

post "/categories/:c_id/posts" do
  @category = Category.where(name: params[:c_id]).first
  #@post = Post.create(name: params[:name], l)

  @category.posts << @post

  redirect to "/categories/#{@category.name}/posts/#{@post.name}"
end

post "/categories/:c_id/posts/:p_id" do
  @category	=Category.where(name: params[:c_id]).first
  @category.posts.create(name: params[:name], location: params[:location], input: params[:input],price: params[:price])
  #@post = Post.where(name: params[:p_id]).first

  redirect to "/categories/#{@category.name}/posts"
end