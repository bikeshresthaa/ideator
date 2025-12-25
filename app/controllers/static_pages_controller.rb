class StaticPagesController < ApplicationController
  def about
  end

  def random
    @idea = Idea.all.sample
  end
end
