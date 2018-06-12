require "pry"

RSpec.describe 'styling' do

  context 'within index.html' do

    it 'contains a <link> tag' do
      link = parsed_html.search('link')[0]
      expect(link).to_not be_nil, "No <link> tag was found"
    end

    it 'correctly links to the style.css file with a relative path' do
      link = parsed_html.search('link')[0]
      expect(link).to_not be_nil, "No <link> tag was found"
      expect(link.attributes["href"]).to match(/\.\/style\.css/), "Make sure you provide a relative path to style.css from index.html"
    end

  end


  context 'within style.css' do
    it 'looks like the finished product' do
      # set this to true once your image looks like the solution displayed in the readme!
      my_css_looks_like_the_solution_image = true
      expect(my_css_looks_like_the_solution_image).to be_truthy
    end
  end

end
