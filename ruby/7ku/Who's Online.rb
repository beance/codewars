# frozen_string_literal: true
# Who's Online?
# https://www.codewars.com/kata/5b6375f707a2664ada00002a/train/ruby

def who_is_online(friends)
  friends.each_with_object({}) do |i, obj|
    if i["last_activity"] > 10 && i["status"] == 'online'
      data = [obj["away"]] + [i["username"]]
      obj["away"] = data.compact.flatten
    else
      data = [obj[i["status"]]] + [i["username"]]
      obj[i["status"]] = data.compact.flatten
    end
  end
end

def who_is_online(friends)
  friends.group_by do |f|
    if f['status'] != 'online'
      'offline'
    else
      f['last_activity'] > 10 ? 'away' : 'online'
    end
  end.transform_values{ |fs| fs.map{ |f| f['username'] } }
end

friends = [{"username"=> "Lucy", "status"=> "offline", "last_activity"=> 22},
           {"username"=> "Bob", "status"=> "online", "last_activity"=> 104}]
p who_is_online(friends)