#!/bin/bash
report=$(gawk -F, '{
  if ($2 < 30) 
    tax_bracket = "Low"
  else if ($2 >= 30 && $2 < 50)
    tax_bracket = "Medium" 
  else
    tax_bracket = "High"
  print $1, $2, $3, tax_bracket
}' ~/project/data.txt)
if [[ "$report" != "John 25 New York Low\nJane 30 London Medium\nBob 35 Paris Medium" ]]; then
  exit 1
fi