\version "2.19.83"

aristeiaDynamics = \new Dynamics {
 
  \time 3/8
%   \once \override DynamicText.extra-offset = #'(0 . 4.5)
  % \once \override Hairpin.extra-offset = #'(0 . 6)
%   \once \override Hairpin.rotation = #'(10 0 0.5)
  s16.\ff \> 
  %\once \override DynamicText.extra-offset = #'(0 . 7)
  s32\p
  s16. 
  %\override DynamicText.extra-offset = #'(0 . 7)
  s32\pp
  s16 
  %\once \override Hairpin.extra-offset = #'(0 . 7)
  s16\mp\>
  
  \time 3/8
  s4
  s16 s16\p
  
  %\revert DynamicText.extra-offset
  \time 2/8
  
  s32
 % \once \override DynamicText.extra-offset = #'(0 . 5)
%  \once \override Hairpin.extra-offset = #'(0 . 5.5)
%  \once \override Hairpin.rotation = #'(2 0 1)
  s16.\ff \>
  s16. 
%  \once \override DynamicText.extra-offset = #'(0 . 6)
  s32\pp
  
  \time 2/8
  
  \tuplet 7/4 { s16 
              %  \once \override DynamicText.extra-offset = #'(0 . 5)
                s16.\ff \> s16}
  s8
  
%  \time 2/8
  
  \tuplet 7/4 { s16 s8\pp
                %  \once \override DynamicText.extra-offset = #'(-1 . 6)

                s32\ff \> }
  \tuplet 5/4 {
    s8 s32\mp
  }
  
  \time 2/8
  s32 s16.\<
  s32
   % \once \override DynamicText.extra-offset = #'(0 . 6)

  s32 \ff
   % \once \override DynamicText.extra-offset = #'(0 . 6)

  s16\ff
  
  \time 3/8
  s32 s16.\>
  \tuplet 7/4 {
    s8 s16.\p
  }
  s32 s16.\pp
  
  
  \time 3/8
  s8\<
  \tuplet 5/4 {
    s16 s16.\mp
  }
  \tuplet 5/4 {
    s32
    s8 \pp
  }
  
%  \time 3/8
  %\override DynamicText.extra-offset = #'(0 . 5)
  s16.\ff s32\mp
  s32 s16.\mf\>
  s8
  
%   \time 2/8
   s8
   \tuplet 5/4 {
     s16. s16\p
   }
   
  % \time 2/8
   s8\<
   s32 s32\ff s16\ff
   
   \time 3/8
     \tuplet 3/2 {
       s16 s32\pp\<
     }
   s16
   s8
   s32 s16.\ff
   
   %\time 3/8
   s8
   s16 s16\f
   s32 s16.\mf\>
   
   \time 2/8
   s16. s32\p
   s32 s16\p
   %\once \override DynamicText.extra-offset = #'(0 . 0)
   s32\ff
   
   \time 2/8
   s8\>
   s16 s16\mp
   
   \time 2/8
   s32 s16.\pp
   s32 s16.\p
   
   \time 3/8
  s32   s16\<
     % \once \override DynamicText.extra-offset = #'(0 . 0)

   s32\ff 
   
   \tuplet 7/4 {
     s8. s32\mf
   }
   \tuplet 3/2 {
     s8 s16\p
   }
   
   %\time 2/8
   s8.\pp
   \tuplet 3/2 { s32\mp
%                   \override DynamicText.extra-offset = #'(0 . 0)

                 s32\ff
                 s32\mf
   }
   
   \time 2/8
   \tuplet 7/4 {
     s16 s8\mf\> s32
   }
   s16
   \tuplet 3/2 {
     s32 s16\p
   }
   
   \time 2/8
   s16 s16\<
   s16.
   s32\ff
   
   \time 2/8
   s32 s16.\p\<
   s16 s16\mf\>
   
   %\time 3/8
   \tuplet 7/4 {
     s8 s32 s16\mp
   }
   \tuplet 5/4 {
     s32 s8\mp\<
   }
   \tuplet 7/4 { s8 s32 s16\ff}
  
  %
  %\time 2/8
  s8\mp\<
  \tuplet 7/4 { s16 s16\ff s16 s32\ff}
    
   \time 2/8
   s16.\> s32\p
   \tuplet 7/4 { s8\< s32 s16\ff}
   
   %\time 4/8
   s32 s16.\f
   s16 s16\p\<
   s8
   s16. s32\mf
   
   \time 3/8
   s16 s16\mp\<
   s8
   s32 s16.\ff
   
   \time 2/8
   s16.\< s64 s64\>
   s16. s32\!
   
   \time 3/8
   s32 s16\ff s32\>
   s16. s32\mp
   s8
   
   %\time 3/8
   s16 s16\mp
   s8
   s16.\mf\< s32\f
   
   \time 3/8
   s32 s16.\ff\> s4
   
   \time 3/8
   \tuplet 7/4 { s32 s8\p s16 }
   \tuplet 7/4 { s16 s8\ff s32 }
   \tuplet 7/4 { s8 s16.\ff }

  \time 2/8
  s8
  s16 s16\mp
  
  \time 2/8
  \tuplet 5/4 {
    s16
    s16.\p
  }
  \tuplet 7/4 {
    s32 s8\p\< s16
  }
  
  \time 2/8
  s16. s32\mf
  \tuplet 7/4 {
    s8 s16.\f
  }

  %\time 2/8
  s8\ff\>
  \tuplet 7/4 {
    s32 s32\! s16 s16 s32\mp
  }
  
  \time 2/8
  \tuplet 5/4 {
    s16 s16.\p
  }
  s8
  
  \time 2/8
  s16
  s16\p\< 
  \tuplet 5/4 {
    s16. s32 s32\mf
  }
  
  \time 2/8
  s8 
  \tuplet 3/2 {
    s32 s16\mp
  }
  s16\ff
  
  \time 3/8
  s32 s16.\ff\>
  s32 s16.\mp 
  s16 s16\<
  
  %\time 3/8
  \tuplet 7/4 {
        %\override DynamicText.extra-offset = #'(0 . 5)

    s32 s16.\ff s16\> s32
  }
  \tuplet 7/4 {
    s8\! s32 s16\<
  }
  \tuplet 7/4 {
    s8. s32\mf
  }
  
  \time 4/8
  s16 s16\ff s8 s8 
  \tuplet 3/2 {
    s16 s8\mp
  }
  
  \time 2/8
  \tuplet 5/4 {
    s32 s8\p
  }
  s16 s16\mf
  
  \time 2/8
  \tuplet 7/4 { s8. s32\ff} s8
  
  %|time 4/8
  \tuplet 3/2 {
    s32
    s16\p\<
  }
  s16
  s16
          %\override DynamicText.extra-offset = #'(0 . 0)

  s16\ff
  \tuplet 3/2 {
    s32
    s16\mf\>
  }
  s16\p\<
  \tuplet 7/4 { s16. s8\ff }
  
  %\time 4/8
  s4\spp\<
  \tuplet 3/2 { s16 s32\ff } s16\>
  \tuplet 5/4 { s32 s32\pp s16.\sff }
  
  %\time 3/8
  s16 s16\ff\> s16\pp s32 s32\pp s16. s32\<
  
  \time 3/8
  s8 s16\ff s16\mf s32 s32 \mp s16\pp 
}

