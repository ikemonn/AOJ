while (ln = gets.chomp) != '-' do
  card = ln
  m = gets.to_i
  m.times do
    h = gets.to_i
    card = card[h, card.length] + card[0, h]
  end
  puts card
end
