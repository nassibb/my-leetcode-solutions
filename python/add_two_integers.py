# ======================================
# LeetCode Problem: add two integers
# Language: python
# Link: https://leetcode.com/problems/add-two-integers/
# Synced by: LinkCode
# Date: 3/2/2026, 9:31:54 PM
# ======================================


class Solution(object):
    def sum(self, num1, num2):
        """
        :type num1: int
        :type num2: int
        :rtype: int
        """
        if num1 | num2 <= 0:
            return num1 + num2 
        else:
            return num1 + num2
        