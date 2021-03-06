require 'rails_helper'

RSpec.describe "categoria_produtos/new", type: :view do
  before(:each) do
    assign(:categoria_produto, CategoriaProduto.new(
      :nome => "MyString",
      :categoria_pai_id => 1,
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders new categoria_produto form" do
    render

    assert_select "form[action=?][method=?]", categoria_produtos_path, "post" do

      assert_select "input#categoria_produto_nome[name=?]", "categoria_produto[nome]"

      assert_select "input#categoria_produto_categoria_pai_id[name=?]", "categoria_produto[categoria_pai_id]"

      assert_select "input#categoria_produto_created_by[name=?]", "categoria_produto[created_by]"

      assert_select "input#categoria_produto_updated_by[name=?]", "categoria_produto[updated_by]"
    end
  end
end
