require "rails_helper"

RSpec.describe CategoriaProdutosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/categoria_produtos").to route_to("categoria_produtos#index")
    end

    it "routes to #new" do
      expect(:get => "/categoria_produtos/new").to route_to("categoria_produtos#new")
    end

    it "routes to #show" do
      expect(:get => "/categoria_produtos/1").to route_to("categoria_produtos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/categoria_produtos/1/edit").to route_to("categoria_produtos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/categoria_produtos").to route_to("categoria_produtos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/categoria_produtos/1").to route_to("categoria_produtos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/categoria_produtos/1").to route_to("categoria_produtos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/categoria_produtos/1").to route_to("categoria_produtos#destroy", :id => "1")
    end

  end
end
