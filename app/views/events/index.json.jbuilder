json.array!(@events) do |event|
  json.extract! event, :id, :title, :allDay, :start, :end, :editable
  json.url event_url(event, format: :json)
end
