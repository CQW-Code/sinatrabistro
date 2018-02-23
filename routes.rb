class Menu < Sinatra::Base
   
    get '/' do 
     erb :home
    end  #end do

    get "/apps/new" do
        erb :new
      end

      get "/app/:id/edit" do
        @app = App.find(params[:id])
        erb :edit
      end

      delete "/apps/:id" do
        App.find(params[:id]).destroy
        redirect "/apps"
      end

      put "/apps/:id" do
        app = App.find(params[:id])
        app.update(item: params[:item], 
        price: params[:price],
        description: params[:description])
        redirect "/apps"
      end

      get "/apps" do
        @apps = App.all
        erb :apps
      end

      post "/apps" do
        App.create
        (item: params[:item], 
        price: params[:price], 
        description: params[:description])
        redirect "/"
      end

      delete "/apps/:id" do
      end
     

      
end #end class