class MovieControllerController < ApplicationController

	def aAddMovieReview
        #To add an entry
        @addReview = Review.new
	end

	def vViewMovieReview
        # View all Movie reviews
        @reviews = Review.all
	end

	def submitMovieReview

       #To submit the entered data
       @addReview = Review.new(params.require(:addReview).permit(:title, :stars, :commentary))
       if @addReview.save
         redirect_to vViewMovieReview_url
       	else
         redirect_to aAddMovieReview_url
        
       end
	end


end
