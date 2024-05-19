class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = @prototype.comments.build(comment_params)
   if @comment.save
    redirect_to prototype_path(@prototype), notice: 'Comment was successfully created.'
  else
    # 保存に失敗した場合の処理
    render 'prototypes/show'
  end
end
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
