string = 'afoolishconsistencyisthehobgoblinoflittlemindsadoredbylittlestatesmenandphilosophersanddivineswithconsistencyagreatsoulhassimplynothingtodohemayaswellconcernhimselfwithhisshadowonthewallspeakwhatyouthinknowinhardwordsandtomorrowspeakwhattomorrowthinksinhardwordsagainthoughitcontradicteverythingyousaidtodayahsoyoushallbesuretobemisunderstoodisitsobadthentobemisunderstoodpythagoraswasmisunderstoodandsocratesandjesusandlutherandcopernicusandgalileoandnewtonandeverypureandwisespiritthatevertookfleshtobegreatistobemisunderstood'
posibles = []
palabra = 'a'
j = 1
veces = 1
(string.size-1).times do |i|
  j = i+1
  (string.size - veces).times do
    palabra = string[i..j]
    if palabra == palabra.reverse
      posibles.push(palabra)
    end
    j += 1
  end
end
puts posibles.max_by(&:length)
