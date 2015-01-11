# Example provided by
# @FluffyPira (Elizabeth Wetton), with help from @friendlycatduck (Marie )
# pulling a specific line
 
if tweet.text.start_with?('Q')
 q_reply = File.readlines("q.txt")
 reply(tweet, q_reply[0])
else
 reply(tweet, model.make_response(meta(tweet).mentionless, meta(tweet).limit))
end
 
# pulling a random line

if tweet.text.start_with?('Q')
 q_reply = File.readlines("q.txt").sample
 reply(tweet, q_reply)
else
 reply(tweet, model.make_response(meta(tweet).mentionless, meta(tweet).limit))
end
