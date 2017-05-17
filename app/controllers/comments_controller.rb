class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @blog = @comment.blog
    @comments = @blog.comments
    respond_to do |format|
      if @comment.save
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
    respond_to do |format|
        format.js { render :edit }
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @blog = @comment.blog
    @comments = @blog.comments
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to blog_path(@blog), notice: 'コメントを編集しました。'}
        format.js { render :index }
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
        format.html { redirect_to blog_path(@blog), notice: 'コメントを削除しました。'}
        format.js { render :index }
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
