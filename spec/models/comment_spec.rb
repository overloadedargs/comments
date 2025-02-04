require 'rails_helper'

RSpec.describe Comment, type: :model do
  
  let(:comment) { Comment.new }

  context "creating comments" do
    it "is a Comment" do
      expect(comment).to be_a(Comment)
    end

    it "has text as a comment attached to the comment model" do
      expect(comment.comments).to be nil
    end

    it "should be valid with only text" do
      comment.comments = "A test comment"
      expect(comment.valid?).to be true
    end

    it "should have some text" do
      comment.comments = ""
      expect(comment.valid?).to be false
    end

    it "should be invalid with unknown symbols" do
      comment.comments = "^&&%%"
      expect(comment.valid?).to be false
    end

    it "should be invalid with numbers" do
      comment.comments = "12345123"
      expect(comment.valid?).to be true
    end

    it "can create a comment" do
      comment.comments = "A test comment"
      expect { comment.save }.to change{Comment.count}.by(1)
    end
  end
end
