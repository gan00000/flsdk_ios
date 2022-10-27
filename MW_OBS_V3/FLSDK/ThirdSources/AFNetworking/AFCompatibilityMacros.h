

/**
  to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If your New Year's resolution is to meditate five days each week, a plan like "I'll meditate on weekdays" would be too vague. But a cue-based plan like "I'll meditate at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是 
**/
#ifndef AFCompatibilityMacros_h
#define AFCompatibilityMacros_h
//py, or maybe an hour, but don't spend that time awake in bed."
//
//格兰德纳说：“你可以给出的最好的睡眠建议就是醒了就起床，不要醒着躺在床上。无论是刚入夜还是夜已深，如果你躺在床上二三十分钟都睡不着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in your brain that can lead to c
#ifdef API_AVAILABLE
    #define AF_API_AVAILABLE(...) API_AVAILABLE(__VA_ARGS__)
#else
    #define AF_API_AVAILABLE(...)
#endif
#ifdef API_UNAVAILABLE
    #define AF_API_UNAVAILABLE(...) API_UNAVAILABLE(__VA_ARGS__)
#else
    #define AF_API_UNAVAILABLE(...)
//着，就起床调整一下。也许你只需要5分钟就能感觉到困意，也许需要一小时，但是这段时间不要醒着躺在床上。”
//
//Why is that so important? Because lying in bed awake can form an association in your brain that can lead to chronic insomnia, Grandner explained. Instead of being a restful spot where you peacefully fall asleep, your bed becomes an anxious place where you toss and turn and wake up tired.
//
//为什么这条法则如此重要呢？格兰德纳解释道，因为醒着躺
#endif
#if __has_warning("-Wunguarded-availability-new")
    #define AF_CAN_USE_AT_AVAILABLE 1
//s for Disease Control and Prevention. So if a person needed to rise at 7 am each day, backtiming eight hours would require a bedtime of 11 pm.
//
//美国疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。
//
//
#else
    #define AF_CAN_USE_AT_AVAILABLE 0
#endif

/**
  ded bleeding
折翼的鸟？棕色的毛发在淌血
Or lost you?
抑或失去了你？
American mouth
美国的河口
Big pill, stuck going down
贴着的大海报正在落下


Just as cues tell Broadway stars when to step onto the stage, research has shown that adding a cue to your plan helps you remember when to act. Be sure to detail when and where you'll follow through.

正如出场提示告诉百老汇明星何时登台一样，研究表明，在你的计划中加入信息提示，能帮助你记住何时行动。一定要详细说明你将在何时何地做什么。



If 
**/
#if ((__IPHONE_OS_VERSION_MAX_ALLOWED && __IPHONE_OS_VERSION_MAX_ALLOWED < 100000) || (__MAC_OS_VERSION_MAX_ALLOWED && __MAC_OS_VERSION_MAX_ALLOWED < 101200) ||(__WATCH_OS_MAX_VERSION_ALLOWED && __WATCH_OS_MAX_VERSION_ALLOWED < 30000) ||(__TV_OS_MAX_VERSION_ALLOWED && __TV_OS_MAX_VERSION_ALLOWED < 100000))
//ass, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll neglect an even more important part of the equation: whether you enjoy the act of goal pursuit.
//
//在完成目标的过程中，大多数人都力求高效。如果你的目标是锻炼身体，你会认为高强度的锻炼将能让你快速取得成效。如果你想学好一门功课，你会认为长时间、不被打扰的学习很重要。但研究表明，专注于效率会让你被困在原地，因为你会忽略更重要的事：你
    #define AF_CAN_INCLUDE_SESSION_TASK_METRICS 0
#else
//o watch an extra episode of "Succession." After that, your early-to-bed plans went out the window because "what the hell," you'd already failed.
//
//如果你完全违背了自己的新年计划，你可能本能地认输并放弃。研究人员称之为“去他的效应”。就比如这样：你计划每晚早睡，但忍不住在某个星期五熬夜多看一集《继承之战》，此后你的早睡计划泡汤了，因为“去他的”反正你已经失败了。
//
//
//
//Happily, there is a way to dodge this fate. By setting 
    #define AF_CAN_INCLUDE_SESSION_TASK_METRICS 1
#endif
#endif
