-- automatically play when file is loaded
mp.register_event('file-loaded', function()
  -- start from the beginning if end of file or if the difference
  -- between the total video time and position is less than a second
  local duration = mp.get_property_number('duration')
  local time_pos = mp.get_property_number('time-pos')
  local eof_reached = mp.get_property('eof-reached') == 'yes'

  if eof_reached or (duration ~= nil and time_pos ~= nil and duration - time_pos < 1) then
    mp.command('seek 0 absolute')
  end

  mp.command('set pause no')
end)
