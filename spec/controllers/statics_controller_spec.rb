require File.dirname(__FILE__) + '/../spec_helper'

describe StaticsController do
  fixtures :all
  render_views

  it "show action should render show template" do
    get :show, :id => Static.first
    response.should render_template(:show)
  end
end
