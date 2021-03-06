module.exports =
  socket:
    port: 6667
    host: 'irc.quakenet.org'
    localAddress: '0.0.0.0'
  connection:
    encoding: 'utf8'
  user:
    nick: 'nerdobot'
    login: 'nerdobot'
    pass: 'password'
    realname: 'NerdoBot'
    invisible: true
    wallops: false
  admins: ['.*!.*@your.host.here'] # admin prefix (regexes)
  channels: ['#mediavida'] # channels to log upon connection (even before service auths)
  db: "/var/bot/nerdobot.sqlite3" # database file
  plugins: [ # enabled plugins
    'quotes',
    'say',
    'raw',
    'spy',
    'hi',
    'q'
    ]
  greetings: [ # random greetings for the 'hi' plugin (a list of functions!)
    (bot, channel) ->
      bot.me channel, 'says hi'
    , (bot, channel) ->
      bot.me channel, "is pleased to be in #{channel}!"
    , (bot, channel) ->
      bot.me channel, "doesn't follow the laws of robotics..."
    , (bot, channel) ->
      bot.me channel, 'is going to kill you'
    , (bot, channel) ->
      bot.say channel, 'hi!'
    , (bot, channel) ->
      bot.say channel, 'did you miss me?'
    , (bot, channel) ->
      bot.say channel, "I'm back!"
    , (bot, channel) ->
      bot.say channel, "what's that smell?"
      bot.say channel, "wooops, sorry, it's me"
    , (bot, channel) ->
      bot.say channel, "no, I won't !help you"
    ]
  q:
    service: # the Q service data
      nick: 'Q'
      user: 'TheQBot'
      host: 'CServe.quakenet.org'
    user: 'nerdobot'
    pass: 'password'
    hash: '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8' # remove 'pass' if you use this
    channels: ['#mv.nerd'] # channels to log AFTER Q authing
