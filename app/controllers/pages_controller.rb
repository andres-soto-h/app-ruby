class PagesController < ApplicationController
  def home
  end

  def about_us
    @saludo="Hola Andrés"
  end

  def contact
    @saludo="Estas en el contact"
  end

  def post
    @saludo="Estas en post"
  end

  #about_us

  #contact

  #posts

end
