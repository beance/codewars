# frozen_string_literal: true

# Job Matching #2
#

def match(job, candidates)
  candidates.select do |c|
    (job["equity_max"] > 0 || !c["desires_equity"]) &&
      job["locations"].any? { |l| c["current_location"] == l || c["desired_locations"].include?(l) }
  end
end

candidates = [{
                "desires_equity" => true,
                "current_location" => "New York",
                "desired_locations" => ["San Francisco", "Los Angeles"]
              }, {
                "desires_equity" => false,
                "current_location" => "San Francisco",
                "desired_locations" => ["Kentucky", "New Mexico"]
              }]
job1 = { "equity_max" => 0, "locations" => ["Los Angeles", "New York"] }
job2 = { "equity_max" => 1.2, "locations" => ["New York", "Kentucky"] }

p match(job1, candidates)
p match(job2, candidates)
