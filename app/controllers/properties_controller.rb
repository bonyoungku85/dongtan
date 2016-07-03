class PropertiesController < ApplicationController
  def posts
  	@posts = Post.all
	end

  def posts_category
		case params[:category]
    when "deal"
      @category = "매매"
    when "rent"
      @category = "월세"
    when "lease"
      @category = "전세"
    else
      @category = "기타"
    end
    @posts = Post.where(category: @category)
  end

  def show
  end

  def write
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
