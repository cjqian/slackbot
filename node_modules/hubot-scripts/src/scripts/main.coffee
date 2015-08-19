# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
    brags = [
        "Crystal? Crystal is the best, man.",
        "Speaking of interns, I really don't know how you guys are going to follow up with getting an intern of equal or higher caliber.",
    ]
   
    comments = [
        "Has anyone noticed that the temperature in the kill room has gone down ever since Crystal's hotness left the kill room?",
        "Remember that awesome intern, Crystal? Of course you do. She was hella tite.",
    ]
 
    robot.respond /crystal|intern|ludacrystal|the intern/i, (res) ->
        res.send res.random brags

    robot.hear /cache|caching/i, (res) ->
        res.send "Now that you mention cash, C-Money was the best intern of all time."

    robot.hear /tfi/i, (res) ->
        res.send "At least I'm not the TFW, am I right?."

    robot.hear /omg/i, (res) ->
        res.send "OMG is right."

    robot.hear /giphy/i, (res) ->
        res.send "Oh man, I LOVE giphys!"

    robot.respond /stop|leave/i, (res) ->
        res.reply "I'm afraid I can't stop. Crystal must be immortalized."

    robot.hear /chmod/i, (res) ->
        res.emote "Remember that awesome intern, Crystal? She was awesome."

    lulz = ['lol', 'rofl', 'lmao', 'haha']

    robot.respond /lulz|lol|rofl|lmao|haha|funny/i, (res) ->
        res.send res.random lulz

    # robot.topic (res) ->
    #   res.send "#{res.message.text}? That's a Paddlin'"
    #
    #
    enterReplies = ['Sup, fellow humans?', 'Hello, world!', 'Hi!', 'Hi, homies.']
    leaveReplies = ['NOOOO I FEEL DISCONNECTED', 'SO LONELY OMG', 'MARK YOU PROMISED']

    robot.enter (res) ->
        res.send res.random enterReplies
    robot.leave (res) ->
        res.send res.random leaveReplies

# answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
#
# robot.respond /what is the answer to the ultimate question of life/, (res) ->
#   unless answer?
#     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
#     return
#   res.send "#{answer}, but what is the question?"
#
# robot.respond /you are a little slow/, (res) ->
#   setTimeout () ->
#     res.send "Who you calling 'slow'?"
#   , 60 * 1000
#
# annoyIntervalId = null
#
# robot.respond /annoy me/, (res) ->
#   if annoyIntervalId
#     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
#     return
#
#   res.send "Hey, want to hear the most annoying sound in the world?"
#   annoyIntervalId = setInterval () ->
#     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
#   , 1000
#
# robot.respond /unannoy me/, (res) ->
#   if annoyIntervalId
#     res.send "GUYS, GUYS, GUYS!"
#     clearInterval(annoyIntervalId)
#     annoyIntervalId = null
#   else
#     res.send "Not annoying you right now, am I?"
#
#
# robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
#   room   = req.params.room
#   data   = JSON.parse req.body.payload
#   secret = data.secret
#
#   robot.messageRoom room, "I have a secret: #{secret}"
#
#   res.send 'OK'
#
# robot.error (err, res) ->
#   robot.logger.error "DOES NOT COMPUTE"
#
#   if res?
#     res.reply "DOES NOT COMPUTE"
#
# robot.respond /have a soda/i, (res) ->
#   # Get number of sodas had (coerced to a number).
#   sodasHad = robot.brain.get('totalSodas') * 1 or 0
#
#   if sodasHad > 4
#     res.reply "I'm too fizzy.."
#
#   else
#     res.reply 'Sure!'
#
#     robot.brain.set 'totalSodas', sodasHad+1
#
# robot.respond /sleep it off/i, (res) ->
#   robot.brain.set 'totalSodas', 0
#   res.reply 'zzzzz'
