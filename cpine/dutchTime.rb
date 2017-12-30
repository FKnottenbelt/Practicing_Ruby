####
# gives back de Dutch Time.new taking daylight saving in to account
###
def dutchTime
  require 'date'
  
  time = Time.new
  month = time.month
  day = time.day
  year = time.year
   
  winter=[1, 2, 11, 12]
  summer=[4, 5, 6, 7, 8, 9]

  if winter.include? month
   zomertijd = false
  elsif summer.include? month
   zomertijd = true
  else
   puts "what the ?"
  end   
   
  #If it's March
  if month == 3
    if day < 25
      zomertijd = false
    end
    if day >= 25 && day < last_sunday_of_month(month,year)
      zomertijd = false
    else
      zomertijd = true   
    end 
  end
   
  #If it's October    
  if month == 10
    if day < 25
     zomertijd = true   
    end if
    if day >= 25 && day < last_sunday_of_month(month,year)
      zomertijd = true
    else
      zomertijd = false   
    end 
  end   

  def last_sunday_of_month(month,year)
    # get the last day of the month, go back until we have a sunday
    Date.new(year, month, -1).downto(0).find(&:sunday?)
  end
 
  if zomertijd 
    time = Time.new.getlocal
  else
    time = Time.new.getlocal("+01:00")
  end
end

=begin
    Declareer de variabele ZomerTijd. Deze bevat het resultaat van de berekening.

    ZomerTijd = true als het Zomertijd is, anders false.
    Haal de systeemdatum op.
    Bekijk de maand: Als het januari, februari, november of december is, 
    is het wintertijd. ZomerTijd = false.
    In de maanden april t.m. september is het zomertijd. ZomerTijd = true.
    Het is nu maart of oktober. Hierin kan de zomertijd beginnen of eindigen. 
    De laatste zondag is bepalend.
    De laatste zondag valt op de 25e t.m. de 31e dag.
    Bekijk de datum. Als deze kleiner is dan 25:
        Als het maart is, is het nog wintertijd. ZomerTijd wordt false.
        Als het oktober is, is het nog zomertijd. ZomerTijd wordt true.
    Als de datum 25 is of hoger, moet uitgezocht worden of de datum eerder is dan 
    de laatste zondag van de maand. 
    
    Er moet dus worden bepaald wanneer dat is. Voor zowel maart als oktober kijk je naar 
    dag 31: Is dat zondag? Zo nee, kijk naar dag 30. Is dat zondag? enz., aflopend tot en 
    met dag 25. Aan het einde van deze berekeing is bekend op welke datum de laatste zondag
    van de maand is.
    
    Vergelijk de dag van vandaag met de laatste zondag van de maand.
        in maart: Vandaag vóór de laatste zondag van de maand: Wintertijd, 
        dus ZomerTijd = false, anders true.
        in oktober: Vandaag vóór de laatste zondag van de maand: Zomertijd, 
        dus ZomerTijd = true, anders false.

    zomertijd = true
=end