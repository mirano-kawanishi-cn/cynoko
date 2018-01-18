# Description:
#   <description of the scripts functionality>
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot <trigger> - <what the respond trigger does>
#   <trigger> - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   <github username of the original script author>


module.exports = (robot) ->

  robot.respond /おはよう/i, (msg) ->
    msg.reply "おはようございます！"

# ここから↓が今回追加したやつ

  robot.respond /(おやす(|み)|Good Night)/i, (msg) ->
    goodnight = msg.random [
      "おやすみなさい"
      "おやすみなさい"
      "おやすみなさい"
      "おやすみなさい、また明日！"
      "おやすみなさい、また明日！" 
      "もう私も寝ますね！おやすみなさい" 
      "もう私も寝ますね！おやすみなさい"
      "もう寝ちゃうんですか？"
      "今日は一緒に寝ますか？"
    ]
    msg.reply "#{goodnight}"