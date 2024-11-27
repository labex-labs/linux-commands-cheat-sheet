#!/bin/bash
if ! dc -e '30 s p' | grep -q '0.5'; then
  echo "The dc command is not calculating the sine correctly."
  exit 1
fi

if ! dc -e '45 c p' | grep -q '0.7071067811865476'; then
  echo "The dc command is not calculating the cosine correctly."
  exit 1
fi

if ! dc -e '10 l p' | grep -q '2.302585092994046'; then
  echo "The dc command is not calculating the natural logarithm correctly."
  exit 1
fi

if ! dc -e '100 L p' | grep -q '2'; then
  echo "The dc command is not calculating the base-10 logarithm correctly."
  exit 1
fi

if ! dc -e '2 e p' | grep -q '7.38905609893065'; then
  echo "The dc command is not calculating the exponential correctly."
  exit 1
fi

echo "The dc command is performing advanced calculations correctly."
exit 0