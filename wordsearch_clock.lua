--[[
    Flags:
        -A      - Always on regardless of time
        -N      - Never lit. Useful for filling useless amounts of space left in the wordsearch table.
        Q1      - On during the first quarter of the hour. Simply a short hand for M0-M15.
        Q2      - On during the second quarter of the hour. Simply a short hand for M15-M30.
        Q3      - On during the third quarter of the hour. Simply a short hand for M30-M45.
        Q4      - On during the fourth quarter of the hour. Simply a short hand for M45-M60 (M0).
        M0-M59  - On between the specified minute and when the next is defined in the table (Ex: If M0 and M30 are in
                  the table together, one will stay on until minute 30 of the hour, but if one is M0 and the other is
                  M1, then it will only stay on for one minute.) They can also be chained together by adding a third
                  parameter to the entry, like {"Fourty",M40,M50}, where it will stay lit between minute 40 and
                  minute 50 of the hour. Time codes can also be put into arrays, like {"All over",["M0","M13","M40"]},
                  and it will be lit only on the listed minutes in the array.
        H0-H23  - On during hour the specified hour. If nothing higher than hour 12 is found, the clock will
                  automatically become a 12 hour clock.
]] --
-- local settings = {}
local wordsTbl = {
    {"It", "-A"}, {"L", "-N"}, {"Is", "-A"}, {"asthpma", "-N"}, {"ac", "-N"},
    {"Fifteen", "M15", "M20"}, {"dco", "-N"}, {"Twenty", "M20", "M30"},
    {"Five", "M25", "M30"}, {"xw", "-N"}, {"Thirty", "M30", "M40"}, {"f", "-N"},
    {"Ten", "M10", "M20"}, {"os", "-N"}
}
