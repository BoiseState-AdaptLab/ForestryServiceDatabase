# Author: Floriana Ciaglia
# Date: Feb 1st, 2022
# File: This file holds functions that interact with the OCR pipeline

from collections import Counter
from math import sqrt
from validation_functions import get_valids

def word2vec(word):

    # count the characters in word
    cw = Counter(word)
    # precomputes a set of the different characters
    sw = set(cw)
    # precomputes the "length" of the word vector
    lw = sqrt(sum(c*c for c in cw.values()))

    # return a tuple
    return cw, sw, lw

def cosdis(v1, v2):
    # which characters are common to the two words?
    common = v1[1].intersection(v2[1])
    # by definition of cosine distance we have
    return sum(v1[0][ch]*v2[0][ch] for ch in common)/v1[2]/v2[2]


# the guesses list comes from the pipeline side
def get_most_similar_guess(guesses, field): 
    '''
        This function will be called from the
        pipeline to receive the most similar
        guess of word for each field in the form.
    '''
    correct_word = 'sheep' #TODO: retrieve this from the db <---
    correct_word = get_valids(field)
    best_match = [0, ]

    for word in guesses:
        # nested for loop
        print("trial ", word)
        word = ''.join(word).lower()

        va = word2vec(word)
        vb = word2vec(correct_word)
        
        prob = cosdis(va, vb)

        if prob > best_match[0]: # we probably found a match
            best_match = [prob, word]
        print("at this stage", best_match)


    if best_match[0] == 0.0:
        return None 
    else:
        print(best_match[1])     
 
    return best_match[1]