\version "2.24.0"

\header {
  title = "La Follia di Spagna"
  subtitle = "Realizzazione per Tiorba in LA con Tabulatura Francese"
  tagline = ##f
}

\paper {
  page-count = 1
  system-system-spacing.basic-distance = #18
}

% ------------------------------------------------------
% 1. MUSICA PER TIORBA (Voce Superiore / Mano Destra)
% ------------------------------------------------------
tiorbaSuperiore = \relative c' {
  \clef treble
  \key d \minor
  \time 3/4

  % Misure 1-4
  <f a d>8 a16 f d8 a' f a | <e a cis>8 e16 cis a8 e' cis e | 
  <f a d>16 a f d a8 f' d a' | <e g c>8 g16 e c8 g' e c' |

  % Misure 5-8
  <f, a c>16 c' a f c8 a' f c' | <e, g c>8 g16 e c8 g' e c' | 
  <f, a d>16 a f d a8 f' d a' | <e a cis>8. d16 cis b a g f e d cis |

  % Misure 9-12
  <f a d>8 a16 f d8 a' f a | <e a cis>8 e16 cis a8 e' cis e | 
  <f a d>16 a f d a8 f' d a' | <e g c>8 g16 e c8 g' e c' |

  % Misure 13-16
  <f, a c>16 c' a f c8 a' f c' | <e, g c>8 g16 e c8 g' e c' | 
  <f, a d>8 f16 d <e a cis>8 e16 cis <d f a d>4 | <cis a'>2. \bar "|."
}

% ------------------------------------------------------
% 2. MUSICA PER TIORBA (Voce Inferiore / Bassi)
% ------------------------------------------------------
tiorbaInferiore = \relative c {
  \clef bass
  \key d \minor
  \time 3/4

  % Misure 1-4
  d2. | a2. | d2. | c2. |

  % Misure 5-8
  f2. | c2. | d2. | a2. |

  % Misure 9-12
  d2. | a2. | d2. | c2. |

  % Misure 13-16
  f2. | c2. | d4 a2 | d2. \bar "|."
}

% ------------------------------------------------------
% 3. BASSO CONTINUO ORIGINALE E CIFRATURA
% ------------------------------------------------------
bassoContinuo = \relative c {
  \clef bass
  \key d \minor
  \time 3/4

  d2. | a'2. | d,2. | c2. |
  f2. | c2. | d2. | a'2. |
  d,2. | a'2. | d,2. | c2. |
  f2. | c2. | d2 a'4 | d,2. \bar "|."
}

cifratura = \figuremode {
  <5>2. | <7+>2. | <5>2. | <6>2. |
  <5>2. | <6>2. | <5>2. | <7+>2. |
  <5>2. | <7+>2. | <5>2. | <6>2. |
  <5>2. | <6>2. | <5>2 <7+>4 | <5>2. |
}

% ------------------------------------------------------
% STRUTTURA PARTITURA COMPLETA (4 RIGHI)
% ------------------------------------------------------
\score {
  <<
    % --- Gruppo Tiorba in Notazione ---
    \new PianoStaff \with { 
      instrumentName = \markup { \center-column { "Tiorba" "(Notazione)" } }
    } <<
      \new Staff = "tiorbaAcuti" \tiorbaSuperiore
      \new Staff = "tiorbaBassi" \tiorbaInferiore
    >>

    % --- Rigo Tabulatura Francese ---
    \new TabStaff \with {
      instrumentName = \markup { \center-column { "Tabulatura" "Francese" } }
      stringTunings = #' tiorba-tuning % Accordatura standard tiorba
      tablatureFormat = #fret-letter-tablature-format % Imposta le lettere (a, b, c...)
      fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "k")

      % Impostazione dello strumento MIDI (Pizzico antico)
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \new TabVoice { \tiorbaSuperiore }
      \new TabVoice { \tiorbaInferiore }
    >>

    % --- Rigo Basso Continuo Cifrato ---
    \new Staff = "bassoContinuoLine" \with {
      instrumentName = \markup { \center-column { "Basso" "Continuo" } }
    } <<
      \bassoContinuo
      \cifratura
    >>
  >>

  \layout {
    \context {
      \Score
      \override StaffGrouper.staff-staff-spacing.basic-distance = #12
  
    }
   }
   \midi { 
   \tempo 4 = 80
  }

}