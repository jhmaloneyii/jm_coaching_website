class PostsController < UnsecureApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy, :blog_index]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
    @summary_max = Post.validators_on( :summary ).first.options[:maximum]
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "The post was created!"
    else
      render 'new'
    end
  end

  def edit
    @summary_max = Post.validators_on( :summary ).first.options[:maximum]
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Update was Successful!"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "Post was Deleted!"
  end

  def blog_index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image, :active, :summary, tag_ids:[])
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
