require 'rails_helper'

describe "post a review route", :type => :request do

before do
    post '/api/reviews', params: { :title => 'test_review', :content => 'test_content', :author => 'test_author', :rating => 2, :user_id => User.last.id, :beer_id => Beer.last.id }
  end

it 'returns the review' do
    expect(JSON.parse(response.body)['title']).to eq('test_review')
  end

it 'returns the review\'s content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

it 'returns the reviews\'s author' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

it 'returns the review\'s user id' do
    expect(JSON.parse(response.body)['user_id']).to eq(User.last.id)
  end

it 'returns the review\'s beer id' do
    expect(JSON.parse(response.body)['beer_id']).to eq(Beer.last.id)
  end

it 'returns the review\'s rating' do
    expect(JSON.parse(response.body)['rating']).to eq(2)
  end

it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end