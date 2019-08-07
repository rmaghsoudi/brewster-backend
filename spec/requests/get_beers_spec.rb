require 'rails_helper'

describe "get all beers route", :type => :request do
  let!(:beers) {FactoryBot.create_list(:random_beer, 20)}

before {get '/api/beers'}

it 'returns all beers' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end