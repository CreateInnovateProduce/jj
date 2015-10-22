module ShareMeow
  module Routes
    class Base < Sinatra::Application
      configure do
        set :logging, true

        disable :method_override
        disable :protection
        disable :static

        enable :use_code
      end

      get '/' do
        'ShareMeow 😻'
      end

      helpers Helpers
      helpers Sinatra::ContentFor
    end
  end
end
