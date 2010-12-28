require 'test_helper'

class TigersControllerTest < ActionController::TestCase

  context 'GET /tigers' do
    setup do
      Tiger.create(:name => 'Fred')
      Tiger.create(:name => 'George')
      @a = Tiger.all
      get :index
    end

    should assign_to(:tigers).with_kind_of(Array).with { @a }
    should render_template :index
    should respond_with :success
    should_not set_the_flash
    should respond_with_content_type :html
  end
  
  context 'GET /tiger/id' do
    setup do
      Tiger.create(:name => 'Bill')
      @p = Tiger.create(:name => 'Frank')
      get :show, :id => @p.id
    end

    should assign_to(:tiger).with_kind_of(Tiger).with { @p }
    should render_template :show
    should respond_with :success
    should_not set_the_flash
    should respond_with_content_type :html
  end
  
end
