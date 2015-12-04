# Capybara.default_drive = :selenium
Capybara.default_driver = :poltergeist

Capybara.app_host = 'https://search-coursera-jparra.herokuapp.com/'

describe 'Coursera App' do

  describe 'visit root' do
    before { visit '/' }

    it "displays 'Johns Hopkins' (default)" do
      expect(page).to have_content 'Johns Hopkins'
    end

    it "displays table element that has a row with 3 columns" do
      expect(page).to have_selector(:xpath, "//table//tr[count(td)=3]")
    end

    it "displays table element that has a row with 3 columns" do
      expect(page).to have_selector(:xpath, "//table//tr//td[1]//img")
    end

    it "displays 'The Meat We Eat' when looking_for=diet" do
      visit "?looking_for=diet"
      expect(page).to have_content 'The Meat We Eat'
    end
  end
end
