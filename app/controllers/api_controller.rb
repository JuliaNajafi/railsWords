class ApiController < ApplicationController
  def get_api
    puts params
    # use http party gem and save to a variable, then render json
    userinput = params["phrase"]
    @response = HTTParty.get("https://glosbe.com/gapi_v0_1/translate?from=eng&dest=cmn&format=json&phrase=#{userinput}")
    render json: @response
  end
end
