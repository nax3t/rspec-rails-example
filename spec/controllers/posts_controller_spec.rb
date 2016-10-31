require 'rails_helper'

RSpec.describe PostsController, type: :controller do
	describe "GET #index" do
		it "responds with an HTTP status code of 200" do
			get :index

			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "renders the index template" do
		  get :index
		  expect(response).to render_template("index")
		end

		it "loads all of the posts into @posts" do
			Post.destroy_all
		  post1, post2 = Post.create(title: "Hello world"), Post.create(title: "Cool app!")
		  get :index

		  expect(assigns(:posts)).to match_array([post1, post2])
		end
	end
end
