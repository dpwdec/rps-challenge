feature 'results of the game are displayed' do
  scenario 'player 1 wins' do
    sign_in
    srand(500)
    choose('player_1_rock')
    click_button('play')
    expect(page).to have_content('Dec wins.')
  end

  scenario 'player 2 wins' do
    sign_in
    srand(500)
    choose('player_1_paper')
    click_button('play')
    expect(page).to have_content('愛 wins.')
  end

  scenario 'its a draw' do
    sign_in
    srand(500)
    choose('player_1_scissors')
    click_button('play')
    expect(page).to have_content("It's a draw!")
  end
end
