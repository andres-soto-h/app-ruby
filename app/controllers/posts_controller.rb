# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.all
    @var = 'Estas en el controlador de Post'
  end
end
