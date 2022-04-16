require 'twilio-ruby'
class HerosController < ApplicationController
  before_action :find_hero, only: [:show, :edit, :update, :destroy]

  def thisisadmin
  end
  
  def index
    @heros = Hero.all.order("created_at DESC")
  end

  def show
  end

  def edit
  end

  def update
    if @hero.update(hero_params)
      redirect_to hero_path(@hero)
    else
      render 'edit'
    end
  end

  def destroy
    @hero.destroy
    redirect_to root_path
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)

    if @hero.save
      account_sid = 'AC5c29e5fa23bf92283ea8d4310b067bb1'
      auth_token = 'cca4ddf98da04422e7404492d7e7606e'
      client = Twilio::REST::Client.new(account_sid, auth_token)

      from = '+17409088086' # Your Twilio number
      to = '+16415101376' # Your mobile phone number

      client.messages.create(
      from: from,
      to: to,
      body: "Hey friend!"
      )
      redirect_to root_path
    else
      render 'new'
    end
  end


  private
    def hero_params
      params.require(:hero).permit(:name, :field, :hero_image, :stories, :phone)
    end

    def find_hero
      @hero = Hero.find(params[:id])
    end
end
