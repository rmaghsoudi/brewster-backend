require 'rails_helper'

describe "post a review route", :type => :request do

before do
    post "/reviews" , :params => { :title => 'test_review', :content => 'test_content', :rating => 2, :user_id => 6, :beer_id => 50 }
  end
it 'returns the review' do
    expect(JSON.parse(response.body)['title']).to eq('test_review')
  end

it 'returns the review\'s content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

it 'returns the review\'s author' do
    expect(JSON.parse(response.body)['author']).to eq('ASA')
  end

it 'returns the review\'s user id' do
    expect(JSON.parse(response.body)['user_id']).to eq(6)
  end

it 'returns the review\'s beer id' do
    expect(JSON.parse(response.body)['beer_id']).to eq(50)
  end

it 'returns the review\'s rating' do
    expect(JSON.parse(response.body)['rating']).to eq(2)
  end

it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end