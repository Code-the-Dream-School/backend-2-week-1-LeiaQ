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
    
    #
    def create
        @page = Page.new(params)
        render text: params.to_json
    end

end
