# frozen_string_literal: true
# Alan Partridge III - London
#

def alan(arr)
  stations = ["Rejection", "Disappointment",  "Backstabbing Central",  "Shattered Dreams Parkway"]
  (stations - arr).empty? ? 'Smell my cheese you mother!' : 'No, seriously, run. You will miss it.'
end


p alan(["Norwich", "Rejection", "Disappointment", "Backstabbing Central", "Shattered Dreams Parkway", "London"])
# => "Smell my cheese you mother!"


p alan(["North Norfolk Digital", "North Norfolk Digital", "Backstabbing Central", "Disappointment", "Rejection", "Rejection", "Spiksworth", "Tiverton", "Backstabbing Central", "Shattered Dreams Parkway", "Backstabbing Central", "Tiverton", "Rejection", "the Moon", "Disappointment", "London", "Rejection", "North Norfolk Digital", "North Norfolk Digital", "Disappointment", "North Norfolk Digital", "Backstabbing Central", "the Moon", "Norwich", "the Moon", "Disappointment", "Spiksworth", "the Moon", "North Norfolk Digital", "the Moon", "Spiksworth", "Shattered Dreams Parkway", "Tiverton", "North Norfolk Digital", "North Norfolk Digital", "the Moon", "North Norfolk Digital", "Disappointment", "Tiverton", "Norwich", "the Moon", "Disappointment", "Backstabbing Central", "London", "Shattered Dreams Parkway", "London", "Spiksworth", "the Moon", "North Norfolk Digital"])