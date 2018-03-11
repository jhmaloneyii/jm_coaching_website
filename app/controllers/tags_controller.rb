class TagsController < UnsecureApplicationController
  before_action :authenticate_admin!, except: [:show]
  before_action :find_tag, only: [:show, :edit, :update, :destroy]

  def show
    @posts = @tag.posts
  end

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to tags_path, notice: "The tag was created!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @tag.update(post_params)
      redirect_to @post, notice: "Update was Successful!"
    else
      render 'edit'
    end
  end

  def destroy
    @tag.destroy
    redirect_to posts_path, notice: "Tag was Deleted!"
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end
end
