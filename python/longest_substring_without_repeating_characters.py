# ======================================
# LeetCode Problem: longest substring without repeating characters
# Language: python
# Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/
# Synced by: LinkCode
# Date: 8/6/2026, 4:41:57 PM
# ======================================


class Solution(object):
    def lengthOfLongestSubstring(self, s):
        seen = {}
        l = 0
        length = 0
        for r in range(len(s)):
            char = s[r]
            if char in seen and seen[char] >= l:
                l = seen[char] + 1
            else:
                length = max(length, r - l + 1)
            seen[char] = r

        return length