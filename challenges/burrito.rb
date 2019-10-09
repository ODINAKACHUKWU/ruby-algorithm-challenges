friends_burritos = {chad: [], mango: [], applekid: [], rangus: [], mobin: [], grimp: []}

burrito_ingredients = ["beans", "chicken", "cheese", "lettuce", "pico", "sour cream"]

friends_burritos.each do |friend, burrito|
    ingredients = burrito_ingredients.combination(3).to_a.sample
    burrito << ingredients
    burrito_message = "#{friend.to_s.capitalize} got a burrito with "
    ingredients.each do |ingredient|
        burrito_message << "#{ingredient}, "
    end
    puts burrito_message + "and love."
end
