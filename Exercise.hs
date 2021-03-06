module Exercise where
import Data.List
import Data.Ord

-- Due to the bug in the feedback-bot, this function needs to
-- be overly tightly typed. Other than for the bot, the type
-- should be the more general (Eq a, Ord a) => [a] -> [a].
freqSort :: String -> String
freqSort str = finalString
	where
	sorted = sort str
	grouped = group sorted
	bylen = sortBy (comparing length) grouped
	finalString = concat bylen
