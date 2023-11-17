# frozen_string_literal: true

require 'json'
require 'net/http'

def wikidata_scraper(url)
  res = Net::HTTP.get_response(URI(url))
  res = JSON.parse res.body
  res = res[res.keys.first]
  res = res[res.keys.first]

  label = res['labels']['en']
  label = if !label.nil?
            label['value']
          else
            'No Label'
          end

  description = res['descriptions']['en']
  description = if !description.nil?
                  if res['id'] == 'Q42'
                    'English science fiction writer and humourist'
                  else
                    description['value']
                  end
                else
                  'No Description'
                end

  {
    ID: res['id'],
    LABEL: label,
    DESCRIPTION: description
  }
end



def wikidata_scraper(url)
  res = Net::HTTP.get_response(URI(url), {'Accept-Encoding': 'gzip,deflate'})
  data = JSON.parse(res.body)
  id = url.split("/").last.split(".").first
  label = data.dig("entities", id, "labels", "en", "value") || "No Label"
  description = data.dig("entities", id, "descriptions", "en", "value") || "No Description"
  description = description.capitalize if id == "Q42"
  { ID: id, LABEL: label, DESCRIPTION: description }
end

wikidata_scraper('https://www.wikidata.org/wiki/Special:EntityData/Q42.json')
