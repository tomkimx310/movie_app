class MoviesController < ApplicationController

	def index
		@movies = Movie.search(params[:search])	
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.create(movie_params)

		if @movie.save 
			redirect_to "/movies/#{@movie.id}", :notice => "Your movie was saved!"
		else
			render "new"
		end
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])

		if @movie.update_attributes(movie_params)
			redirect_to "/movies"
		else
			render "edit"
		end
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to "/movies", :notice => "Your movie has been deleted"
	end


	private

	def movie_params
		params.require(:movie).permit(:name, :genre, :year)
	end


end