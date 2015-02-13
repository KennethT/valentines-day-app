class WhysinglesController < ApplicationController
  def index
    @whysingle = Whysingle.all
  end

  def new
    @whysingle = Whysingle.new
  end

  def show
    @whysingle = Whysingle.find(params[:id])
  end

  def create
    @whysingle = Whysingle.new(whysingle_params)
    if @whysingle.save
      redirect_to whysingles_path, notice: 'You are not alone, except in your bed.'
    else
      render:new
    end
  end


  private

  def set_whysingle
    @whysingle = Whysingle.find(params[:id])
  end

  def whysingle_params
    params.require(:whysingle).permit(:reason)
  end


end
