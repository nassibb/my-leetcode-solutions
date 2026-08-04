# ======================================
# LeetCode Problem: two sum
# Language: python
# Link: https://leetcode.com/problems/two-sum/
# Synced by: LinkCode
# Date: 8/3/2026, 8:47:59 PM
# ======================================


class Solution(object):
    def twoSum(self, nums, target):
        num_map = {}
        for i, num in enumerate(nums):
            complement = target - num
            if complement in num_map:
                return [num_map[complement], i]
            num_map[num] = i
        