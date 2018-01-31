# A quick example for HTML

def unescapedHTML(string)
  str = string.dup
  str.gsub!(/&(.*?);/) {
    match = $1.dup
    case match
    when /\Aamp\z/i then '&'
    when /\Aquot\z/i then '"'
    when /\Agt\z/i then '>'
    when /\Alt\z/i then '<'
    when /A#(\d+)\z/ then Integer($1).chr
    when /\A#x([0-9a-f]+)\z/i then $1.hex.chr
    end
  }
  str
end

puts unescapeHTML('1&lt;2 &amp;&amp; 4&gt;3') # -> 1<2 && 4>3
puts unescapeHTML('&quot;A&quot; = &#65; = &#x41;') # -> "A" = A = A
