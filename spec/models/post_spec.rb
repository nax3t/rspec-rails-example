require 'rails_helper'

RSpec.describe Post, type: :model do
	post = Post.create(author: "Charles Dickens", title: "Tale of Two Cities")

	it "has an author" do

		expect(post.author).to eq("Charles Dickens")
		expect(post.author).not_to eq("J.K. Rowlings")
	end

	it "must have a title" do
		is_expected.to validate_presence_of(:title)
		# expect(post.title).not_to eq("Chamber of Secrets")
	end
end
