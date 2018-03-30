class PostsController < ApplicationController

	before_action :set_post, only: [ :show, :edit, :update, :destroy ]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post, success: 'Стаття успішно добавлена'
		else
			render :new, danger: 'Стаття не добавлена'
		end
	end

	def edit
	end

	def update
		if @post.update_attributes(post_params)
			redirect_to @post, success: 'Стаття успішно оновлена'
		else
			render :edit, danger: 'Стаття не оновлена'
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path, success: 'Стаття успішно видалена'
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :summary, :body)
	end

end
