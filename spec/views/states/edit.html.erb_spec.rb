RSpec.describe "states/edit", type: :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :icao24 => "MyString",
      :callsign => "MyString",
      :origin_country => "MyString"
    ))
  end

  it "renders the edit state form" do
    render

    assert_select "form[action=?][method=?]", state_path(@state), "post" do

      assert_select "input#state_icao24[name=?]", "state[icao24]"

      assert_select "input#state_callsign[name=?]", "state[callsign]"

      assert_select "input#state_origin_country[name=?]", "state[origin_country]"
    end
  end
end
