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

  def posts_project
		case params[:project]
		when "work"
			@type = "Work"
		else 
			@type = "Personal"
		end
		@posts = Post.where(project: @project)
  end

  def show
		@post = Post.find(params[:id])
  end

  def write
  end

  def write_complete
		post = Post.new
		post.dimension = params[:post_dimension]
		post.category = params[:post_category]
		post.project = params[:post_project]
		post.title = params[:post_title]
		post.content = params[:post_content]
		post.image = params[:image]
		if post.save
			flash[:alert] = "Successfully Saved."
			redirect_to "/uploads/show/#{post.id}"
		else
			flash[:alert] = post.errors.values.flatten.join(' ')
			redirect_to :back
		end
  end

  def edit
		@post = Post.find(params[:id])
  end

  def edit_complete
		@post = Post.find(params[:id])
		@post.destroy
		flash[:alert] = "Successfully Edited."
		redirect_to "/"
  end

  def delete_complete
		@post = Post.find(params[:id])
		@post.destroy
		flash[:alert] = "Successfully Deleted."
		redirect_to "/"
  end
end
