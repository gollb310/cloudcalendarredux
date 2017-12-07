module CaleventHelper

  def write_json
    events_json = []
    CalEvent.all.each do |event|
      event_json = {
          "id" => event.id,
          "start" => event.start,
          "end" => event.end,
          "title" => event.title,
          "description" => event.event_description,
      }
      events_json << event_json
    end
    File.open("public/event.json","w") do |f|
      f.write(events_json.to_json)
    end
  end
end