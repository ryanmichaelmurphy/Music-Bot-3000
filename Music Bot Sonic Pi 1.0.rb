### work for Music Bot 3000

live_loop :timed do
  sync :drum
  use_synth :tb303
  play_pattern_timed chord(:E3, :major7), [0.25, 0.5], amp: 0.09
  sleep 0.5
  play_pattern_timed chord(:E3, :major7), [0.25, 0.5], amp: 0.09
  sleep 0.5
  play_pattern_timed chord(:D3, :major7), [0.25, 0.5], amp: 0.09
  sleep 0.5
  play_pattern_timed chord(:A2, :major7), [0.25, 0.5], amp: 0.09

end

live_loop :base do
  sync :drum
  1.times do
    
    play_pattern_timed scale(:a2, :major_pentatonic), 1, release: 0.1
  end
  
  play :cs3, duration: 1, release: 0.1
  sleep 1
  play :b2, duration: 1, release: 0.1
  #sleep 1
  
end


live_loop :drum do
  sample :bd_808, amp: 10
  sleep 1
  sample :drum_snare_soft
  sleep 1
end

live_loop :chord do
  sync :drum
  play_pattern_timed chord(:E3, :major7),[0.24,0.51], amp: 0.125
end

live_loop :amb do
  sync :drum
  sample :ambi_lunar_land, amp: 0.5, attack: 4, duration: 8
  sleep 8
end

live_loop :robo1 do
  sync :drum
  sample :mehackit_robot5 , amp: 0.5, rate: 1, beat_stretch: 1
end








