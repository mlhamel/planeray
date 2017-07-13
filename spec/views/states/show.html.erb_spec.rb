RSpec.describe "states/show", type: :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :icao24 => "Icao24",
      :callsign => "Callsign",
      :origin_country => "Origin Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Icao24/)
    expect(rendered).to match(/Callsign/)
    expect(rendered).to match(/Origin Country/)
  end
end
