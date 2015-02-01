get "/categories/:c_id/posts" do

  @category = Category.find_by(name: params[:c_id])
  @posts = @category.posts
  # input = Post.all
  # input = Post.all_category_id(1)

  # params[:books] = input.inspect
  # puts params[:books].split(",").class

  erb :'categories/show'
end

