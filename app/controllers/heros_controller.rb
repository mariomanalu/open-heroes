class HerosController < ApplicationController
    before_action :find_hero, only: [:show, :edit, :update,  :destroy]
    def index
        @heros = Hero.all.order("created_at DESC") 
    end

    def new
        @hero = Hero.new
    end

    def show
        @hero = Hero.find(params[:id])
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
    end 

    def create
        @hero = Hero.new(hero_params)
        if @hero.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    private
        def hero_params
            params.require(:hero).permit(:name, :field, :description, :phone)
        end

        def find_hero
            @hero = Hero.find(params[:id])
        end
end
