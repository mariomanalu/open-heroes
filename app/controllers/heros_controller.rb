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
      account_sid = 'REDACTED'
      auth_token = 'REDACTED'
      client = Twilio::REST::Client.new(account_sid, auth_token)

      from = 'REDACTED' # Your Twilio number
      to = 'REDACTED' # Your mobile phone number

      client.messages.create(
      from: from,
      to: to,
      body: "Hi there! Congratulations, your hero submission is successful. Your hero is on the Wall of Heroes!"
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
