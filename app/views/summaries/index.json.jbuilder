json.array!(@summaries) do |summary|
  json.extract! summary, :id, :raw_text, :summarized_text
  json.url summary_url(summary, format: :json)
end
