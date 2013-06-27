require 'spec_helper'

describe DemoController do
  describe "#create" do
    it "returns http success" do
      get :create
      expect(response).to be_redirect
    end
  end

  describe '#show' do
    it "displays a demo chat" do
      
      chat = NewChat.new(customer_id: 1, id: 2)
      ChatService.stub(create_chat: chat)

      get :show, id: chat.id
      expect(response).to be_ok
    end
  end
end
