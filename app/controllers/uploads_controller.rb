class UploadsController < ApplicationController
  def posts
		@posts = Post.all
  end

  def posts_dimension
		case params[:dimension]
		when "2D"
			@dimension = "2D"
		else
			@dimension = "3D"
		end
		@posts = Post.where(dimension: @dimension)
  end

  def posts_category
		case params[:category]
		when "illustration"
			@category = "Illustration"
		when "web_design"
			@category = "Web Design"
		when "brand_identity_design"
			@category = "Brand Identity Design"
		when "motion_graphics"
			@category = "Motion Graphics"
		else "photography"
			@category = "Photography"
		end
		@posts = Post.where(category: @category)
  end

  def posts_type
		case params[:type]
		when "work"
			@type = "Work"
		else 
			@type = "Personal"
		end
		@posts = Post.where(type: @type)
  end

  def show
		@post = Post.find(params[:id])
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
