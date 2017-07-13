RSpec.describe "states/new", type: :view do
  before(:each) do
    assign(:state, State.new(
      :icao24 => "MyString",
      :callsign => "MyString",
      :origin_country => "MyString"
    ))
  end

  it "renders new state form" do
    render

    assert_select "form[action=?][method=?]", states_path, "post" do

      assert_select "input#state_icao24[name=?]", "state[icao24]"

      assert_select "input#state_callsign[name=?]", "state[callsign]"

      assert_select "input#state_origin_country[name=?]", "state[origin_country]"
    end
  end
end
