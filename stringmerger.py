"""
You are given two strings word1 and word2. 
Merge the strings by adding letters in alternating order, starting with word1. 
If a string is longer than the other, append the additional letters onto the end of the merged string.
Return the merged string.
"""


import sys

class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        try :
            if len(word1) == 0 or len(word2) == 0 or len(word1) > 100 or len(word2) > 100:
                raise ValueError("Atleast one word has a lenght of 0 or greater than 100")
            word1 = word1.lower() 
            word2 = word2.lower()
            merge_words = min(len(word1), len(word2))
            diff_len = len(word1) - len(word2)
            res = ""
            for i in range(merge_words):
                res = res + word1[i] + word2[i]
            
            if (diff_len) :
                res += word1[merge_words:] if diff_len > 0 else word2[merge_words:]
        except ValueError as e:
            print(e)
        
        return res



def main() :
    print(Solution().mergeAlternately(sys.argv[1],sys.argv[2]))


if __name__ == "__main__":
    main()
