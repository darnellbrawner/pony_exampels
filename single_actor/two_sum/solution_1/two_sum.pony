// Brute Force simplist approach
//Time complexity: O(n^2)
//Space complexity: O(1)
/* Python Example
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i in range(len(nums)):
            for j in range(i + 1, len(nums)):
                if nums[j] == target - nums[i]:
                    return [i, j]
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

  fun two_sum(): Array[I32] => //(nums: Array[I32], target: I32): Array[I32] =>
     var tmp = Array[I32](2)
      for i in Range(0, _nums.size()) do
          for j in Range(0, _nums.size()) do
          if tmp.size() < 1 then
            tmp = try
              if _nums(j)? == (_target - _nums(i)?)  then
                [_nums(i)?; _nums(j)?]
              else
              []
              end
            else
              []
            end
            end
          end
      end
    tmp




actor Main
    new create(env: Env) =>
        let c = C.create(env, [1;2;3;4;5], 9)
        var s: Array[I32]
        s = c.two_sum()
        let tmp1 = try
          s(0)?
        end
        let tmp2 = try
          s(1)?
        end

        env.out.print("Correct output should be: [ 4 ; 5 ]")
        env.out.print("["+tmp1.string()+" ; "+tmp2.string()+"]")