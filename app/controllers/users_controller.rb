class UsersController < ApplicationController
    def index
        render "index"
        #we're bonito
    end
    def hello
        render "hello"
        #works like a champ
    end
    def say 
        render "say"
    end
    def say_name
        @name = params[:name]
        render "sayName"
    end
    def say_stuffs
        redirect_to "/say/hello"
    end
    def times
        

        if session[:counter] == nil
            session[:counter] = 0
        else
            session[:counter] += 1
        render "times"
        end
    end
    def times_restart
        reset_session
        if session[:counter] == nil
            flash[:alert] = "Clear"
        end
        redirect_to "/times"
    end
end
