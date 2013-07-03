class PostsController < ApplicationController
 



  def index
    @name = "Gene"
    @posts = Post.order("lower(title) ASC").all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
# params = { :post => {:body: blah, :title}}

    # @post.save
    # redirect_to @post

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post}
        format.json { render json: @post}
      else
        flash[:notice] = "test flash notice"
        format.html { render action: "new", notice: "Post could not be saved"}
        format.json { render json: @post.errors, status: :unprocessable_entity}
      end
    end

  end

  def edit
    @post = Post.find(params[:id])
    
  end

  def update
    @post = Post.find(params[:id])

    # @post.update_attributes(params[:post])

    # redirect_to @post

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        flash[:notice] = "test flash notice"
        format.html { render action: "edit",  notice: "Could not update"}
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end

    #  @product = Product.where(:id => params[:id]).first

    # respond_to do |format|
    #   if @product.update_attributes(params[:product])
    #     format.html { redirect_to @product, notice: 'Product was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: "edit" }
    #     format.json { render json: @product.errors, status: :unprocessable_entity }
    #   end
    # end
    
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy



    redirect_to posts_path

  #    @product = Product.where(id: params[:id]).first
  # @product.destroy

  # respond_to do |format|
  #   format.html { redirect_to products_url, notice: "Product was successfully deleted." }
  #   format.json { head :no_content }
  # end
  # render /views/posts/destroy*
  end
end








