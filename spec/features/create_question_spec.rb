require 'rails_helper'


feature 'User creates question' do
  it 'they see the foobar on the page', js: true do
    visit '/questions/new'
    fill_in 'question[title]', with: 'What is Rspec?'
    fill_in 'question[description]', with: 'Explain definition of Rspec'
    click_button 'Create Question'

    expect(page).to have_text 'Question was successfully created.'
    # visit root_path
  end
end

# feature 'User Add Answer' do
# it 'see the answer tab on the page', js: true do
#   visit '/answers/new'
#   fill_in 'answer[body]', with: 'RSpec is a testing tool for Ruby, created for behavior-driven development (BDD). It is the most frequently used testing library for Ruby in production applications. Even though it has a very rich and powerful DSL (domain-specific language), at its core it is a simple tool which you can start using rather quickly'
#   click_button 'Create Answer'

#   expect(page).to have_text 'Answer was successfully created'
# end
  
# end