require "say/version"

module Say
  # http://www1.odn.ne.jp/haru/data-list/mark.html
  DEFAULT_SAY = '/usr/bin/say'
  SIGNS = {
    '!' => 'exclamation mark',
    '?' => 'question mark',
    "'" => 'single quotation mark',
    '"' => 'double quotation mark',
    '#' => 'numerical sign, hash mark',
    '$' => 'dollars sign',
    '\\' => 'yen sign',
    '%' => 'percent',
    '&' => 'ampersand',
    '(' => 'paren, parenthesis',
    ')' => 'paren, parenthesis',
    '^' => 'caret, circumflex',
    '~' => 'tilde',
    '|' => 'vertical bar',
    '@' => 'at sign',
    "`" => 'back apostrophe',
    '[' => 'bracket',
    ']' => 'bracket',
    '{' => 'brace',
    '}' => 'brace',
    '*' => 'asterisk',
    ';' => 'semicolon',
    ':' => 'colon',
    ',' => 'comma',
    '.' => 'period, dot, point',
    '<' => 'less than sign',
    '>' => 'grater than sign',
    '/' => 'slash',
    '_' => 'low line, underscore',
    '=' => 'equal',
    '-' => 'minus sign, hyphen, dash',
    '+' => 'plus sign',
  }
  
  def self.say(words)
    return unless words.any?
    word = words.join(' ')
    word = SIGNS[word] if SIGNS[word]
    system "#{DEFAULT_SAY} #{word}"
  end
end