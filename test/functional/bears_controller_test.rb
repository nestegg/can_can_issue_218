require 'test_helper'

class BearsControllerTest < ActionController::TestCase

  context 'GET /bears' do
    setup do
      Bear.create(:name => 'Fred')
      Bear.create(:name => 'George')
      @a = Bear.all
      get :index
    end

    should assign_to(:bears).with_kind_of(Array).with { @a }
    should render_template :index
    should respond_with :success
    should_not set_the_flash
    should respond_with_content_type :html
  end
  
  context 'GET /bears/id' do
    setup do
      Bear.create(:name => 'Bill')
      @p = Bear.create(:name => 'Frank')
      get :show, :id => @p.id
    end

    should assign_to(:bear).with_kind_of(Bear).with { @p }
    should render_template :show
    should respond_with :success
    should_not set_the_flash
    should respond_with_content_type :html
  end
  
end
