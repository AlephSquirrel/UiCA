VonNeumann ← A₂
Hex        ← ⊂A₂⊏0_2C₂
Moore      ← ⊂A₂C₂

~Rule {Name Type Table Nstates Neighborhood}

# Table Nstates Neighborhood ? String
ParseRule ← |1.3 (
  ⍣(⊙VonNeumann°$"_V"
  | ⊙Hex°$"_H"
  | ⊙Moore
  )
  ⍣(⊙⊙⋕°$"B_/S_/G_"
  | ⊙⊙2°$"B_/S_"
  )
  ⊟⊙¬∩(⬚0↯[9]°⊚-@0)
  ⬚1⍜⧻⋅.
  ◿⟜(+⍉¤⇡)⊸⧻
)

SeedGrid ← /+⊞>\+⊙(gen⊙⚂) # Grid ? Densities Size

# Grid ? Grid Rule
Update ← (
  =2◡⋅Rule~Nstates
  ⨬(⊡⊙Rule~Table⍉˜⊟/+=1⊸↻◡⋅Rule~Neighborhood
  | ⊡⊙Rule~Table⍉˜⊟/+⊸↻◡⋅Rule~Neighborhood
  )
)

Life        ← Rule "Life" 0 ParseRule "B3/S23"
HighLife    ← Rule "HighLife" 0 ParseRule "B36/S23"
Move        ← Rule "Move" 0 ParseRule "B368/S245"
HexLife     ← Rule "HexLife" 0 ParseRule "B2/S34H"
BriansBrain ← Rule "Brian's Brain" 0 ParseRule "B2/S/G3"
StarWars    ← Rule "Star Wars" 0 ParseRule "B2/S345/G4"
