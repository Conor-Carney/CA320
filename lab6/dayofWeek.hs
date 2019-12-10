data Day =  | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
		Deriving(Enum,Show)
data Month = | Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec
		Deriving(Enum, Read)

type Date(Int,Month,Int)