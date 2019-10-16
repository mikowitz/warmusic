\version "2.19.83"

aristeiaDynamics = \new Dynamics {
  \time 3/8
  s16.\ff \> s32\p
  s16. s32\pp
  s16 s16\mp\>
  
  \time 3/8
  s4
  s16 s16\p
  
  \time 2/8
  
  s32 s16.\ff \>
  s16. s32\pp
  
  \time 2/8
  
  s16 s16\ff
  s8
  
%  \time 2/8
  
  \tuplet 7/4 { s8. s32\ff }
  s8
  
  \time 2/8
  s8
  s32
  s32 \ff
  s16\ff
  
  \time 3/8
  s4.
  
  \time 3/8
  s4.
  
%  \time 3/8
  s4.\ff
  
   \time 2/8
   s4
   
   \time 2/8
   s8
   s32 s32\ff s16\ff
   
   \time 3/8
   s4
   s32 s16.\ff
   
   %\time 3/8
   s4.
   
   \time 2/8
   s8
   s16. s32\ff
   
   \time 2/8
   s4
   
   \time 2/8
   s4
   
   \time 3/8
   s16. s32\ff s4
   
   %\time 2/8
   s8.
   \tuplet 3/2 { s32 s16\ff}
   
   \time 2/8
   s4
   
   \time 2/8
   s8.. s32\ff
   
   \time 2/8
   s4
   
   %\time 3/8
   s4
   \tuplet 7/4 { s8 s32 s16\ff}
  
  \time 2/8
  s8
  \tuplet 7/4 { s16 s16\ff s16 s32\ff}
    
   \time 2/8
   s8
   \tuplet 7/4 { s8 s32 s16\ff}
   
   %\time 4/8
   s2
   
   \time 3/8
   s4 s32 s16.\ff
   
   \time 2/8
   s4
   
   \time 3/8
   s32 s16.\ff s4
   
   %\time 3/8
   s4.
   
   \time 3/8
   s32 s16.\ff s4
   
   \time 3/8
   s8
   \tuplet 7/4 { s16 s8\ff s32 }
   \tuplet 7/4 { s8 s16.\ff }

  \time 2/8
  s4
  
  \time 2/8
  s4
  
  \time 2/8
  s4

  %\time 2/8
  s4\ff
  
  \time 2/8
  s4
  
  \time 2/8
  s4
  
  \time 2/8
  s8. s16\ff
  
  \time 3/8
  s32 s16.\ff s4
  
  %\time 3/8
  \tuplet 7/4 {
    s32 s16.\ff s16.
  }
  s4
  
  \time 4/8
  s16 s16\ff s8 s4
  
  \time 2/8
  s4
  
  \time 2/8
  \tuplet 7/4 { s8. s32\ff} s8
  
  %|time 4/8
  s8. s16\ff
  s8
  \tuplet 7/4 { s16. s8\ff }
  
  %\time 4/8
  s4
  \tuplet 3/2 { s16 s32\ff } s16
  \tuplet 5/4 { s16 s16.\ff }
  
  %\time 3/8
  s16 s16\ff s4
  
  \time 3/8
  s8 s4\ff
}

