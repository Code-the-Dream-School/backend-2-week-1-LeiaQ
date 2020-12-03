class PagesController < ApplicationController
    def index
        @pages = Page.all
    end
    
    def show
        @page = Page.find(params[:id])
    end

    #to create a page object with empty attributes and to be accessible within our view to base our new page form off of, an object is accessible within our view by assigning it to an instance variable, @page. We get a page object with empty attributes by calling Page.new
    def new
        @page = Page.new
    end
    
    #create method to process submission from our form for a new page
    def create
        # variable to hold our params object, call .require to get page params back .permit to allow params
       page_params = params.require(:page).permit(:title, :body, :slug)
       # create a new page object with params set
       @page = Page.new(page_params)
       #save page record to our database
       @page.save
       # tells the browser to load the view of the new page once its saved with redirect_to method
       redirect_to @page
    end

end
