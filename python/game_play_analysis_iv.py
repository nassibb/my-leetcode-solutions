# ======================================
# LeetCode Problem: game play analysis iv
# Language: python3
# Link: https://leetcode.com/problems/game-play-analysis-iv/
# Synced by: LinkCode
# Date: 3/7/2026, 10:26:35 PM
# ======================================


import pandas as pd

def gameplay_analysis(activity: pd.DataFrame) -> pd.DataFrame:
  act = activity.groupby('player_id')['event_date'].min().reset_index()
  act['day'] = act['event_date'].dt.day
  act['month'] = act['event_date'].dt.month
  act = act.sort_values(by='event_date')

  consecutive = []
  for i in range(len(act)):
      next_day = act.loc[i, 'event_date'] + pd.Timedelta(days=1)
      if ((activity['player_id'] == act.loc[i, 'player_id']) & (activity['event_date'] == next_day)).any():
          consecutive.append(True)
      else:
          consecutive.append(False)
          
  act['is_consecutive'] = consecutive
  fraction = round(act['is_consecutive'].sum() / len(act), 2)
  return pd.DataFrame({'fraction': [fraction]})

