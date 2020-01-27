class FeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "feed_channel"
    puts "someone connected"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    puts "someone dipped bruh"
  end
end
