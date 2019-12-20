# frozen_string_literal: true

require_relative '../lib/pizza_class'

describe Pizza do
  let(:pizzac) { Pizza.new }

  describe '#fun_fact' do
    it 'returns a element (fun fact) as a string' do
      expect(pizzac.fun_fact).to be_a String
    end

    it 'returns a random element from fun_facts array' do
      array_fun_fact = pizzac.instance_variable_get(:@fun_facts)
      random_fun_fact = pizzac.fun_fact
      expect(array_fun_fact).to include(random_fun_fact)
    end
  end

  describe '#random_joke' do
    it 'returns a element (random joke) as a string' do
      expect(pizzac.random_joke).to be_a String
    end

    it 'returns a random element from fun_facts array' do
      array_joke = pizzac.instance_variable_get(:@jokes)
      random_joke = pizzac.random_joke.split("\n")
      expect(array_joke).to include(question: random_joke[0], answer: random_joke[1])
    end
  end

  describe '#how_to_pizza' do
    it 'returns the ingredients and instruccions for pepperoni pizza in a list' do
      pepperoni_text = "Ingredients\n1.-1 can (8 oz each) Tomato Sauce-No Salt Added\n2.-1/4 cup grated Parmesan cheese\n"
      pepperoni_text += "3.-1/4 teaspoon dried oregano\n4.-1 prebaked thin pizza crust (12-inch)\n5.-1 cup shredded part-skim mozzarella cheese\n"
      pepperoni_text += "6.-1/3 cup sliced pepperoni\n\nInstructions\n1.-Preheat oven to 450°F.\n2.-Combine tomato sauce, Parmesan cheese and oregano in small bowl.\n"
      pepperoni_text += "3.-spread tomato sauce evenly over crust.\n4.-Sprinkle pizza with mozzarella cheese.\n5.-top with pepperoni.\n"
      pepperoni_text += "6.-Place on ungreased pizza pan.\n7.-Bake 12 to 15 minutes or until edges of crust are browned lightly and cheese melts.\n"
      pepperoni_text += "8.-Cut pizza into 6 slices.\n"
      expect(pizzac.how_to_pizza('pepperoni')).to eql(pepperoni_text)
    end

    it 'returns the ingredients and instruccions for hawaiian pizza in a list' do
      hawaiian_text = "Ingredients\n1.-1/2 pizza crust\n2.-1/2 cup (127g) pizza sauce (homemade or store-bought)\n"
      hawaiian_text += "3.-1 and 1/2 cups (6oz or 168g) shredded mozzarella cheese\n4.-1/2 cup (75g) cooked ham or Canadian bacon, sliced or chopped\n"
      hawaiian_text += "5.-1/2 cup (82g) pineapple chunks (canned or fresh)\n6.-3 slices bacon, cooked and crumbled\n\nInstructions\n"
      hawaiian_text += "1.-shape the dough\n2.-preheatthe oven to 475°F\n3.-Cover the shaped dough lightly with plastic wrap and allow it to rest as the oven preheats.\n"
      hawaiian_text += "4.-brush the shaped dough lightly with olive oil\n5.-Using your fingers, push dents into the surface of the dough to prevent bubbling.\n"
      hawaiian_text += "6.-Top the dough evenly with pizza sauce\n7.-add the cheese, ham, pineapple, and bacon\n8.-Bake pizza for 12-15 minutes.\n"
      hawaiian_text += "9.-Remove from the oven and top with fresh basil, if desired.\n10.-Slice hot pizza and serve immediately.\n"
      expect(pizzac.how_to_pizza('hawaiian')).to eql(hawaiian_text)
    end
  end
end
