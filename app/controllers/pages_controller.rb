class PagesController < ApplicationController
    #manually create this action method
    def index
        #assign instance variable
        @pages = Pages.all
    end
end
