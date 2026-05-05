#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 90; capacity = 98; latency = 26; risk = 21; weight = 13 };;
expect (score signal_case_1 = 129);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 92; capacity = 93; latency = 21; risk = 19; weight = 8 };;
expect (score signal_case_2 = 141);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 99; capacity = 101; latency = 19; risk = 16; weight = 9 };;
expect (score signal_case_3 = 186);;
expect (classify signal_case_3 = "accept");;
