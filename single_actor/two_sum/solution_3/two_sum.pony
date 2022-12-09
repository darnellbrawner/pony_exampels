// One-pass Hash Table
// Time complexity: O(n)
// Space complexity: O(n)

/* Python Example
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hashmap = {}
        for i in range(len(nums)):
            complement = target - nums[i]
            if complement in hashmap:
                return [i, hashmap[complement]]
            hashmap[nums[i]] = i
*/

use "collections"

class C
  let _env: Env
  let _nums: Array[I32]
  let _target: I32
  new create(env': Env, nums': Array[I32], target': I32) =>
      _env = env'
      _nums = nums'
      _target = target'

  fun two_sum(): Array[I32] =>
     var tmp = Array[I32](2)
     var a : I32 = 0
     var c : I32 = 0
     var hashmap = Map[I32, USize].create(_nums.size())
     let range = Range(0, _nums.size())
     for i in range do
       a = try _nums(i)? else 0 end
       c = _target - a
       if hashmap.contains(c) then
        tmp = [c; a]
       else
        hashmap.insert(a, i)
       end
     end
     tmp


actor Main
    new create(env: Env) =>
        let array: Array[I32] = [1;1;2;3;3;3;7;11;10]
        let c = C.create(env, array , 9)
        var s: Array[I32]
        s = c.two_sum()
        let tmp1 = try
          s(0)?
        end
        let tmp2 = try
          s(1)?
        end
        env.out.print("Return Value should be - [ 2 ; 7 ]")
        env.out.print("["+tmp1.string()+" ; "+tmp2.string()+"]")










