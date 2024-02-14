# frozen_string_literal: true

# IBAN Validator
# https://www.codewars.com/kata/5990b52710038aa522000010/train/ruby

@COUNTRIES = {"AT" => 20, "BE" => 16, "BG" => 22, "CY" => 28, "CZ" => 24, "FO" => 18, "GL" => 18, "DK" => 18, "EE" => 20, "FI" => 18, "FR" => 27, "DE" => 22, "GI" => 23, "GR" => 27, "HU" => 28, "IS" => 26, "IE" => 22, "IT" => 27, "LV" => 21, "LI" => 21, "LT" => 20, "LU" => 20, "MT" => 31, "MC" => 27, "NL" => 18, "NO" => 15, "PL" => 28, "PT" => 25, "RO" => 24, "SM" => 27, "SK" => 24, "SI" => 19, "ES" => 24, "SE" => 24, "CH" => 21, "GB" => 22, "AL" => 28, "AD" => 24, "AZ" => 28, "BH" => 22, "BA" => 20, "BR" => 29, "CR" => 21, "HR" => 21, "DO" => 28, "GE" => 22, "GT" => 28, "IL" => 23, "JO" => 30, "KZ" => 20, "XK" => 20, "KW" => 30, "LB" => 28, "MK" => 19, "MR" => 27, "MU" => 30, "MD" => 24, "ME" => 22, "PK" => 24, "PS" => 29, "QA" => 29, "LC" => 32, "SA" => 24, "RS" => 22, "TL" => 23, "TN" => 24, "TR" => 26, "AE" => 23, "VG" => 24, "ST" => 25, "AX" => 18, "GF" => 27, "GP" => 27, "MQ" => 27, "RE" => 27, "PF" => 27, "TF" => 27, "YT" => 27, "NC" => 27, "BL" => 27, "MF" => 27, "PM" => 27, "WF" => 27, "EA" => 24, "IM" => 22, "GG" => 22, "JE" => 22, "DZ" => 26, "AO" => 25, "BJ" => 28, "BF" => 28, "BI" => 16, "CM" => 27, "CV" => 25, "CF" => 27, "TD" => 27, "CG" => 27, "DJ" => 27, "EG" => 27, "GQ" => 27, "GA" => 27, "GW" => 25, "IR" => 26, "IQ" => 23, "BY" => 28, "SV" => 28, "HN" => 28, "NI" => 32, "CI" => 28, "MG" => 27, "ML" => 28, "MA" => 28, "MZ" => 25, "NE" => 28, "SN" => 28, "TG" => 28, "UA" => 29, "SC" => 27}
def validate_iban text
  cleaned_iban = text.gsub(/[^a-zA-Z0-9]/, "")
  country_id = cleaned_iban[0, 2]
  country_length = @COUNTRIES[country_id]
  return false unless country_length && cleaned_iban.length == country_length

  rearranged_iban = cleaned_iban[4..-1] + cleaned_iban[0, 4]
  numeric_iban = rearranged_iban.gsub(/[A-Z]/) { |char| char.ord - "A".ord + 10 }
  numeric_iban.to_i % 97 == 1
end

p validate_iban "AT483200000012345864"
