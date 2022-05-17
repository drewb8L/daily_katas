def rgb(r, g, b)
  # check if out of limits < 0 or > 255
  # [r, g, b].map { |d|  sprintf('%.2X', d < 0 ? d.round(-4) : d.round) }.join
  result = []
  [r, g, b].map do |d|
    if d > 255
      d = 255
    elsif d < 0
      d = 0
    end

    result << format('%.2X', d)
  end
  result.join
end

# Other solution

# def rgb(r, g, b)
#     "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
# end
#
# def rgb(r, g, b)
#     '%02X' * 3 % [r, g, b].map{ |x| x.clamp(0, 255) }
# end
