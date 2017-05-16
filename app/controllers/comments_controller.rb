class CommentsController < ApplicationController
  def create
    @comment_new = current_user.comments.build(comment_params)
    @blog = @comment_new.blog
    @comments = @blog.comments
    respond_to do |format|
      if @comment_new.save
        format.html {redirect_to blog_path(@blog), notice: 'コメントを投稿しました。'}
        format.js { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @blog = @comment.blog
    @comments = @blog.comments
    @editform = true
  end

  def update
    @comment = Comment.find(params[:id])
    @blog = @comment.blog
    @comments = @blog.comments
    respond_to do |format|
      if @comment.update(comment_params)
        format.html {render :template => "blogs/show", notice: 'コメントを編集しました。'}
        format.js { render :edit }
        #format.html {redirect_to blog_path(@blog), notice: 'コメントを編集しました。'}
        #format.js { render :index }
      else
        format.html { render :index }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @blog = @comment.blog
    @comments = @blog.comments
    respond_to do |format|
      if @comment.destroy
        format.html {render :template => "blogs/show", notice: 'コメントを削除しました。'}
        format.js { render :edit }
      else
        format.html { render :index }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:blog_id, :content)
    end
end
