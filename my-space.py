import spacy

lnp = spacy.blank('en')

doc = lnp("The quick brown fox jumps over the lazy dog")

for token in doc:
    if token.like_num:
        print("number found: ", token.text)
    else:
        print("word found: ", token.text)
