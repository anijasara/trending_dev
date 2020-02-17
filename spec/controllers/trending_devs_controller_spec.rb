require 'rails_helper'

RSpec.describe TrendingDevsController, type: :controller do

  describe "GET #index" do
    let(:api_response) { File.read(Rails.root + 'spec/test_jsons/sample_api_res.json') }
    before do
      allow(HTTParty).to receive(:get).and_return(api_response)
    end

    it "returns http success" do
      stub_request(:get, "https://github-trending-api.now.sh/repositories?language=&since=").
         with(
           headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Ruby'
           }).
         to_return(status: 200, body: api_response, headers: {})

      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
