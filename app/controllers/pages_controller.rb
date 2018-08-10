class PagesController < ApplicationController

layout "custom_layout", only: [:hello] #Define un custom layout para este controlador

  def home
    #render html: "<h1>Hola Andrés desde home</h1>".html_safe
  end

  def about_us
    @saludo="Hola Andrés"
  end

  def contact
    @saludo="Estas en el contact"
  end

  def hello
    @name=params[:name]
  end

  def post
    @posts=Post.all
    #render layout: "custom_layout"
  end

end
