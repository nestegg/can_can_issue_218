require 'test_helper'

class LionsControllerTest < ActionController::TestCase

  context 'GET /lions' do
    setup do
      Lion.create(:name => 'Fred')
      Lion.create(:name => 'George')
      @a = Lion.all
      get :index
    end

    should assign_to(:lions).with_kind_of(Array).with { @a }
    should render_template :index
    should respond_with :success
    should_not set_the_flash
    should respond_with_content_type :html
  end
  
  context 'GET /lions/id' do
    setup do
      Lion.create(:name => 'Bill')
      @p = Lion.create(:name => 'Frank')
      get :show, :id => @p.id
    end

    should assign_to(:lion).with_kind_of(Lion).with { @p }
    should render_template :show
    should respond_with :success
    should_not set_the_flash
    should respond_with_content_type :html
  end
  
end
