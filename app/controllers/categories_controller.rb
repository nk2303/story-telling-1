class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.create(params[:id])
    end

    def update
        @category = Category.find(params[:id])
    end
end
