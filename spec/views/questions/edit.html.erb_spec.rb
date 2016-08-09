require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :survey_id => "",
      :content => "MyText"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_survey_id[name=?]", "question[survey_id]"

      assert_select "textarea#question_content[name=?]", "question[content]"
    end
  end
end
