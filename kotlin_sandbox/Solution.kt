class Solution {
    fun lengthOfLongestSubstring(s: String): Int {
        if (s.length == 1) {
            return 1
        }

        var maxLen = 0
        var storage = HashMap<Char, Int>()
        for(tmp in s){
            if(!storage.containsKey(tmp)){
                storage.put(tmp, 0)
            }
            else{
                maxLen = Math.max(maxLen, storage.size)
                storage.clear()
                storage.put(tmp, 0)
            }
        }
        return Math.max(maxLen, storage.size)
    }
}

fun main() {
    val s = Solution()
    println(s.lengthOfLongestSubstring("dvdf"))
}
