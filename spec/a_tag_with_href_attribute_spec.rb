RSpec.describe "An <a> tag with an 'href' attribute" do

  it 'contains an <a> tag' do
    a_tag = parsed_html.search('a').first

    expect(a_tag).to_not be_nil, hint(1)
  end

  it "has the inner text of 'Kode with Klossy'" do
    a_tag = parsed_html.search('a').first

    expect(a_tag.text).to eq('Kode with Klossy'), hint(2)
  end

  it "has the href attribute of 'https://www.kodewithklossy.com'" do
    a_tag = parsed_html.search('a').first

    expect(a_tag.attr('href')).to eq('https://www.kodewithklossy.com'), hint(3)
  end
end
