require 'rails_helper'

describe "PATCH /users/:id" do

before(:each) do
    @user = create(:user)
  end

it 'updates a user' do

@new_username = Faker::Lorem.unique.word
    @new_name = Faker::Name.name 

patch "/@user.id">users/"#{@user.id}", params: {username: @new_username, name: @new_name}

expect(response.status).to eq(202)
    expect(User.find(@user.id).username).to eq(@new_username)
    expect(User.find(@user.id).name).to eq(@new_name)
  end

end