require 'spec_helper'
require 'debugger'

describe RelationshipsController do

    let(:user) { FactoryGirl.create(:user) }
    let(:other_user) { FactoryGirl.create(:user) }

    before { sign_in user, no_capybara: true }

    describe "creating a relationship with Ajax" do

        it "should increment the Relationship count" do
#            expect do
##                debugger
#                xhr :post, :create, relationship: { followed_id: other_user.id }
# #               debugger
#            end.to change(Relationship, :count).by(1)
# #           debugger
        end

        it "should respond with success" do
##            debugger
#            xhr :post, :create, relationship: { followed_id: other_user.id }
##            debugger
#            expect(response).to be_success
        end
    end

    describe "destroying a relationship with Ajax" do

        before { user.follow!(other_user) }
        let(:relationship) do
            user.relationships.find_by(followed_id: other_user.id)
        end

        it "should decrement the Relationship count" do
#            expect do
##                debugger
#                xhr :delete, :destroy, id: relationship.id
#            end.to change(Relationship, :count).by(-1)
        end

        it "should respond with success" do
##            debugger
#            xhr :delete, :destroy, id: relationship.id
##            debugger
#            expect(response).to be_success
        end
    end
end
