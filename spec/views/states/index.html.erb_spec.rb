RSpec.describe "states/index", type: :view do
  before(:each) do
    assign(:states, [
      State.create!(
        :icao24 => "Icao24",
        :callsign => "Callsign",
        :origin_country => "Origin Country"
      ),
      State.create!(
        :icao24 => "Icao24",
        :callsign => "Callsign",
        :origin_country => "Origin Country"
      )
    ])
  end

  it "renders a list of states" do
    render
    assert_select "tr>td", :text => "Icao24".to_s, :count => 2
    assert_select "tr>td", :text => "Callsign".to_s, :count => 2
    assert_select "tr>td", :text => "Origin Country".to_s, :count => 2
  end
end
