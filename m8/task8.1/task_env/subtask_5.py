from dataclasses import replace
from emoji import emojize

EMOJIS_DICTIONARY  = {
  ":)": ":grinning_face:",
  ";)": ":winking_face:",
  ":(": ":frowning_face:"
}

def transform_text(text):
    for item in EMOJIS_DICTIONARY:
        text = text.replace(item, emojize(EMOJIS_DICTIONARY[item]))
    print(text)
    
user_text = input('Please write text, use next emojis :) ;) :( >> ')
transform_text(user_text)
