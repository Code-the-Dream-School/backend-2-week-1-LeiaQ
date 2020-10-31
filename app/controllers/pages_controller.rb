class PagesController < ApplicationController
    #manually create this action method
    def index
        #assign instance variable to handle pages
        @pages = Page.all
    end
end
