local function toggle()
  -- if end of file, play from beginning
  -- otherwise, fallback to default behavior
  if mp.get_property('eof-reached') == 'yes' then
    mp.command('seek 0 absolute')
    mp.command('set pause no')
  else
    mp.command('cycle pause')
  end
end

mp.register_script_message('play-extras/toggle', toggle)
