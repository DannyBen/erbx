# ERBX - ERB Extended with Pretty Tags

[![Gem Version](https://badge.fury.io/rb/erbx.svg)](https://badge.fury.io/rb/erbx)
[![Build Status](https://github.com/DannyBen/erbx/workflows/Test/badge.svg)](https://github.com/DannyBen/erbx/actions?query=workflow%3ATest)

---

ERBX is a tiny extension to ERB allowing these tags:

- `{{ ... }}` as an equivalent to `<%= ... %>`
- `(( ... ))` as an equivalent to `<%- ... %>`

---

Installation
--------------------------------------------------

```
$ gem install erbx
```

Usage
--------------------------------------------------

Given this ERBX templalte:

```
# example/template.md
((
# Any ruby code can go here
today = Time.now.strftime "%B %d, %Y"
dice = [rand(6) + 1, rand(6) + 1]
))

This roll of a dice happened on {{ today }}.
(( if dice[0] == dice[1] ))
Congratulations, its a double: {{ dice }}
(( else ))
You rolled {{ dice }}
(( end ))
```


```ruby
# Render example
require 'erbx'

template = ERBX.load 'example/template.md'
p template.class
#=> ERB

puts template.result
#=> 
#=> This roll of a dice happened on April 24, 2020.
#=> You rolled [4, 2]
```

