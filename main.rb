require 'telegram/bot'
TOKEN = '530109715:AAHGJ5dV51uqEsKFz7r6UABKLC2I5-AObh4'
ANSWERS = [
  "It is certain",
 "It is decidedly so",
 "Yes — definitely",
 "You may rely on it",

 "As I see it, yes",
 "Most likely",
 "Outlook good",
 "Yes",
"Reply hazy, try again",
"Ask again later",
 "Cannot predict now",
 "Concentrate and ask again",

 "My reply is no",
 "My sources say no",
 "Outlook not so good",
 "Very doubtful"
]
Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start', '/start start'
      bot.api.send_message(chat_id: message.chat.id,
                           text:"Hello, #{message.from.first_name}")
    else
      bot.api.send_message(chat_id: message.chat.id,
                            text: ANSWERS.sample)
    end
    end
end
