class QwitsController < ApplicationController
  def index
    @qwits = Qwit.all
  end

  def show
    @qwit = Qwit.find(params[:id])
  end

  def new
    @qwit = Qwit.new
  end

  def edit
    @qwit = Qwit.find(params[:id])
  end

  def update
    @qwit = Qwit.find(params[:id])
    if params[:qwit]
      @qwit.update(qwits_params)
    end
      redirect_to qwit_path
  end

  def create
    @qwit = Qwit.new(qwits_params)
    if @qwit.save
      flash[:notice] = "Qwit created!"
      redirect_to root_path
    else
      render 'users/show'
    end
  end

  def destroy
    @qwit = Qwit.find(params[:id])
    @qwit.destroy
    redirect_to(root_path)
  end

private

  def qwits_params
    params.require(:qwit).permit(:post, :user_id)
  end
end
