# frozen_string_literal: true

# HTML → CSV変換
#
# @param [String]
# @return [String]
def convert_html_from_csv(html)
  tmp_csv = ""
  csv = ""
  option_values = html.scan /<option value="([a-z0-9_]+)">(.*)<\/option>/

  option_values.each do |option_value|
    option_value.map do |value|
      tmp_csv += value + ","
    end

    csv += tmp_csv.chop.gsub(/$/, "\n")

    tmp_csv = ""
  end

  csv
end
