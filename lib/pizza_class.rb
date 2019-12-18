# frozen_string_literal: true

require_relative 'bot_class'
class Pizza
  def initialize
    @pepperoni_ingredients = [
      '1 can (8 oz each) Tomato Sauce-No Salt Added',
      '1/4 cup grated Parmesan cheese',
      '1/4 teaspoon dried oregano',
      '1 prebaked thin pizza crust (12-inch)',
      '1 cup shredded part-skim mozzarella cheese',
      '1/3 cup sliced pepperoni'
    ]

    @pepperoni_steps = [
      'Preheat oven to 450°F.',
      'Combine tomato sauce, Parmesan cheese and oregano in small bowl.',
      'spread tomato sauce evenly over crust.',
      'Sprinkle pizza with mozzarella cheese.',
      'top with pepperoni.',
      'Place on ungreased pizza pan.',
      'Bake 12 to 15 minutes or until edges of crust are browned lightly and cheese melts.',
      'Cut pizza into 6 slices.'
    ]

    @hawaiian_ingredients = [
      '1/2 pizza crust',
      '1/2 cup (127g) pizza sauce (homemade or store-bought)',
      '1 and 1/2 cups (6oz or 168g) shredded mozzarella cheese',
      '1/2 cup (75g) cooked ham or Canadian bacon, sliced or chopped',
      '1/2 cup (82g) pineapple chunks (canned or fresh)',
      '3 slices bacon, cooked and crumbled',
    ]

    @hawaiian_stemps = [
      'shape the dough',
      'preheatthe oven to 475°F',
      'Cover the shaped dough lightly with plastic wrap and allow it to rest as the oven preheats.',
      'brush the shaped dough lightly with olive oil',
      'Using your fingers, push dents into the surface of the dough to prevent bubbling.',
      'Top the dough evenly with pizza sauce',
      'add the cheese, ham, pineapple, and bacon',
      'Bake pizza for 12-15 minutes.',
      'Remove from the oven and top with fresh basil, if desired.',
      'Slice hot pizza and serve immediately.',
    ]

    @fun_facts = [
      'The average pizzeria uses roughly 55 pizza boxes per day.',
      'We consume around 251,770,000 pounds of pepperonis every year',
      'Some popular pizza toppings in Japan are squid and Mayo Jaga (mayonaise, potato and bacon)',
      'Pizzerias are expected to purchase more than $4 billion worth of cheese annually by the year 2010',
      '36 percent of all pizza orders want their pizza topping pepperoni',
      '94 percent of Americans eat pizza regularly',
      'Pizza accounts for more than 10 percent of all food service sales',
      'On Super Bowl Sunday, pizza delivery drivers can expect $2 tips to sometimes soar as high as $20',
      'Delivery sales of pizza spike the most during close Super Bowl games',
      'Americans eat approximately 100 acres of pizza a day or about 350 slices per second.',
      'There are approximately 61,269 pizzerias in the United States.',
      'Each person in America eats about 46 pizza slices a year.',
      'October is the US national pizza month.',
      'Over 5 billion pizzas are sold worldwide each year.',
      'Kids ages 3 to 11 prefer pizza over all other food groups for lunch and dinner.',
      'Pizza comes from the latin root word Picea which means the blackening of crust by fire.',
      'Italian is the most popular type of Ethnic food in America',
      '62% of Americans prefer meat toppings while 38% prefer vegetables',
      'Women are twice as likely as men to order vegetables on their pizza',
      'Pizza Hut has 12,583 stores in over 90 countries',
      'Saturday night is the most popular night to eat pizza',
      'Pizza Deliverers claim women are better tippers',
      'During TV news, pizza is most often ordered during the weather',
      'There is a Pizza Expo held every year in Las Vegas, Nevada',
      'Pizzerias represent 17% of all restaurants',
      '36% of people consider pizza the perfect breakfast',
      'Eating pizza once a week can reduce the risk of esophageal cancer',
      'The longest pizza delivery was from Cape Town, South Africa to Sydney, Australia',
      'Cristian Dumitru of Romania holds the world record for eating pizza, he ate over 200 pounds.',
      'About 3 billion pizzas are sold annually in the U.S.',
      'Mozzarella cheese accounts for nearly 80 percent of Italian cheese production in the United States.',
      'The most popular pizza size in the U.S. today is 14 inches in diameter.'
    ]

    @jokes = [
      {question: 'Want to hear a joke about pizza?', answer: 'Never mind, it is too cheesy.'},
      {question: 'How do you fix a broken pizza?', answer: 'With tomato paste'},
      {question: 'What is a dog favorite pizza?', answer: 'PUParonni!'},
      {question: 'Why did the hipster burn his mouth while eating his pizza?' , answer: 'He ate it way before it was cool.'},
      {question: 'What does a pizza wear to smell good?', answer: 'Calzogne.'},
      {question: 'Why does the mushroom always get invited to pizza parties?', answer: 'Because he’s such a fungi!'},
      {question: 'What did the pizza slicer say when he wanted to rob the pizza?', answer: '“Hand over the dough or I’ll cut you!”'},
      {question: 'Did you hear about the Italian chef with the terminal illness?', answer: 'He pastaway'},
      {question: 'What do you call a sleeping pizza?', answer: 'A piZZZZZZzza'},
      {question: 'Why did the man go into the pizza business?', answer: ' He wanted to make some dough.'},
      {question: 'What did the pepperoni say to the cook?', answer: 'You wanna pizza me?'},
      {question: 'What kind of pizza do you order on Christmas?', answer: 'Cheeses Crust.'},
      {question: 'Warning!', answer: 'Too much pizza will make your clothes shrink'},
      {question: ' Waiter, will my pizza be long?', answer: ' No sir, it will be round!'}
    ]
  end

  def pepperoni(bot, message)
    text_to = "Ingredients\n"
    line = 1
    @pepperoni_ingredients.each do |x| 
      text_to += "#{line}.-#{x}\n"
      line += 1
    end
    Botcore.answer(bot, message, text_to)
    text_to_in = "Instructions\n"
    line = 1
    @pepperoni_steps.each do |x| 
      text_to_in += "#{line}.-#{x}\n"
      line += 1
    end
    Botcore.answer(bot, message, text_to_in)
  end

  def hawaiian(bot, message)
    text_to = "Ingredients\n"
    line = 1
    @pepperoni_ingredients.each do |x| 
      text_to += "#{line}.-#{x}\n"
      line += 1
    end
    Botcore.answer(bot, message, text_to)
    text_to_in = "Instructions\n"
    line = 1
    @pepperoni_ingredients.each do |x| 
      text_to_in += "#{line}.-#{x}\n"
      line += 1
    end
    Botcore.answer(bot, message, text_to_in)
  end

  def fun_fact(bot, message)
    Botcore.answer(bot, message, @fun_facts.sample)
  end

  def random_joke(bot, message)
    rjoke = @jokes.sample
    text_to = "#{rjoke[:question]}\n#{rjoke[:answer]}"
    Botcore.answer(bot, message, text_to)
  end
end
