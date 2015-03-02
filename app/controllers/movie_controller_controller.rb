class MovieControllerController < ApplicationController

	def aAddMovieReview
        #To add an entry
        @addReview = Review.new

	end

	def vViewMovieReview
        # View all Movie reviews
        @reviews = Review.all
        @people = Person.all
	end

	def submitMovieReview

       #To submit the entered data
       @addReview = Review.new(params.require(:addReview).permit(:title, :stars, :commentary))
       if @addReview.save
         redirect_to reviews_url
       	else
         redirect_to new_review_url
        
       end
	end

  def show
     @review = Review.find(params[:id])
  end

  def edit
     @review = Review.find(params[:id])
  end
  def update
     @review = Review.find(params[:id])
     if @review.update(params.require(:review).permit(:title, :stars, :commentary))
          redirect_to review_url(@review)
    else
         redirect_to review_url
     end
  end
  
  def destroy
    @review = Review.find(params[:id]) 
    @review.destroy
    redirect_to reviews_url
  end


end
