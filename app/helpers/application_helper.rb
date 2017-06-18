module ApplicationHelper
  def display_time(time)
    if (Time.zone.now - time) > 1.day
      l(time, format: "%d %B, %Y at %H:%M")
    else
      "#{time_ago_in_words(time)} ago"
    end
  end
end
