# frozen_string_literal: true

require_relative 'pizza_class'
require 'telegram/bot'
class Botcore
  def initialize
    @order_boolean = false
    @pizza = Pizza.new
    token = '813721422:AAGiR4iH_EXqjNuYmjZURVv-wn_Il-Mdn8w'
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen { |message| response(bot, message) }
    end
  end

  def answer(bot, message, text_to)
    bot.api.send_message(chat_id: message.chat.id, text: text_to)
  end

  def response(bot, message)
    case message.text
    when '/start'
      name = message.from.first_name
      text_to = "Hello #{name}, How can I help you?\nType /help to see the complete command list"
      answer(bot, message, text_to)
    when '/help'
      text_to = "/help -- see the command list\n'/pepperoni -- see how to make pepperoni pizza\n/hawaiian -- see how to make hawaiian pizza\n/funfact -- fun facts about pizza\n/joke -- some nice jokes about pizza"
      answer(bot, message, text_to)
    when '/pepperoni'
      answer(bot, message, @pizza.how_to_pizza('pepperoni'))
    when '/hawaiian'
      answer(bot, message, @pizza.how_to_pizza('hawaiian'))
    when '/funfact'
      answer(bot, message, @pizza.fun_fact)
    when '/joke'
      answer(bot, message, @pizza.random_joke)
    else
      text_to = 'Invalid command, type "/help" to see the list of available commands'
      answer(bot, message, text_to)
    end
  end
end
