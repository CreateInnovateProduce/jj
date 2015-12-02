module ShareMeow
  module Routes
    class Base < Sinatra::Application
      register Sinatra::Param

      configure do
        set :logging, true
        set :views, 'app/views'

        enable :static
        enable :use_code
      end

      get '/' do
        'ShareMeow 😻'
      end
    end
  end
end
