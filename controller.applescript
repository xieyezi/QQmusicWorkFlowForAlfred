set query to "{query}"
set PAUSE_A to "pause"
set PAUSE_SHORT to "p"
set NEXT to "next"
set NEXT_SHORT to "ne"
set PREVIOUS to "previous"
set PREVIOUS_SHORT to "pr"
set LOVE to "love"
set LOVE_SHORT to "lv"
set VOLUME_UP to "volumeup"
set VOLUME_DOWN to "volumedown"
set VOLUME_UP_SHORT to "vu"
set VOLUME_DOWN_SHORT to "vd"
set OPEN_LYRIC to "lyric"
set OPEN_LYRIC_SHORT to "ly"
set EXIT_A to "exit"
set EXIT_SHORT to "ex"


tell application "System Events" to tell process "QQMusic"
	if query is equal to EXIT_A or query is equal to EXIT_SHORT then
		-- 处理退出
		click menu item "退出QQ音乐" of menu "QQ音乐" of menu bar item "QQ音乐" of menu bar 1
	else
		-- 控制命令
		tell menu "播放控制" of menu bar item "播放控制" of menu bar 1
			if query is equal to PAUSE_A or query is equal to PAUSE_SHORT then
				click menu item 1
			else if query is equal to NEXT or query is equal to NEXT_SHORT then
				click menu item "下一首"
			else if query is equal to PREVIOUS or query is equal to PREVIOUS_SHORT then
				click menu item "上一首"
			else if query is equal to VOLUME_UP or query is equal to VOLUME_UP_SHORT then
				click menu item "音量加"
			else if query is equal to VOLUME_DOWN or query is equal to VOLUME_DOWN_SHORT then
				click menu item "音量减"
			else if query is equal to LOVE or query is equal to LOVE_SHORT then
				click menu item "喜欢歌曲"
			else if query is equal to OPEN_LYRIC or query is equal to OPEN_LYRIC_SHORT then
				click menu item 8
			end if
		end tell
	end if
end tell



-- 以下是原版本

-- if query is equal to PAUSE or query is equal to PAUSE_SHORT then
--   tell application "System Events" to tell process "QQMusic"
-- 		click menu item 1 of menu 1 of menu bar item 4 of menu bar 1
-- 	end tell
-- else if query is equal to NEXT or query is equal to NEXT_SHORT then
--   tell application "System Events" to tell process "QQMusic"
-- 		click menu item 2 of menu 1 of menu bar item 4 of menu bar 1
-- 	end tell
-- else if query is equal to PREVIOUS or query is equal to PREVIOUS_SHORT then
--   tell application "System Events" to tell process "QQMusic"
-- 		click menu item 3 of menu 1 of menu bar item 4 of menu bar 1
-- 	end tell
-- else if query is equal to VOLUME_UP or query is equal to VOLUME_UP_SHORT then
--    tell application "System Events" to tell process "QQMusic"
-- 		click menu item 4 of menu 1 of menu bar item 4 of menu bar 1
-- 	end tell
-- else if query is equal to VOLUME_DOWN or query is equal to VOLUME_DOWN_SHORT then
--    tell application "System Events" to tell process "QQMusic"
-- 		click menu item 5 of menu 1 of menu bar item 4 of menu bar 1
-- 	end tell
-- else if query is equal to LOVE or query is equal to LOVE_SHORT then
--    tell application "System Events" to tell process "QQMusic"
-- 		click menu item 6 of menu 1 of menu bar item 4 of menu bar 1
-- 	end tell
-- else if query is equal to OPEN_LYRIC or query is equal to OPEN_LYRIC_SHORT then
--    tell application "System Events" to tell process "QQMusic"
-- 		click menu item 8 of menu 1 of menu bar item 4 of menu bar 1
-- 	end tell
-- else if query is equal to EXIT_A or query is equal to EXIT_SHORT then
--    tell application "System Events" to tell process "QQMusic"
-- 		-- click menu item 3 of menu 1 of menu bar item 2 of menu bar 1
-- 		click menu item "退出QQ音乐" of menu "QQ音乐" of menu bar item "QQ音乐" of menu bar 1
-- 	end tell

-- end if