\version "2.24.2"
SWR_title = "Schneeflöckchen"
SWR_composer = "W. A. Mozart"
SWR_poet = "Hedwig Haberkern"
SWR_arranger = "Gesetzt für kinder-wollen-singen.de"
SWR_copyright = "Public Domain"

SWR_harmonies = \chordmode {
  g1 d2. c2. d2. e2.:m c2. d2. g2.
}

SWR_Score = \score{
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \SWR_harmonies
    }

    \new Voice {
      <<
        {
          \key g \major
          \time 3/4
          \partial 4
          g'4 g'4  b'4 c''4 a'4 a'4 b'8 (c''8)
          d''4 d''4 e''4 d''4 r4. g'8 d''4 b'4 g'4
          e'4 g'4 r8 a'8 fis'4 fis'4 a'4 g'4. r4.
          \bar "|."
        }

        \addlyrics{
          Schnee -- flöck -- chen, vom Him -- mel,
          da kommst du ge -- schneit,
          du warst in der Wol -- ke,
          dein Weg ist gar weit.
        }
      >>
    }
  >>
}

SWR_Strophen = \markup {
  \hspace #0.1 % Spalte vom linken Rand wegbewegen
  % Kann entfernt werden, wenn wenig Platz auf der Seite ist
  \column {
    \line {
      \bold "2."
      \column {
        "Ach setz dich ans Fenster,"
        "du niedlicher Stern,"
        "gibst Blätter und Blumen,"
        "wir haben dich gern!"
      }
      \hspace #0.5 % Spalte vom linken Rand wegbewegen
      \bold "3."
      \column {
        "Schneeflöckchen, ach decke"
        "die Saaten geschwind."
        "Sie frieren, du wärmst sie,"
        "so bittet das Kind."
      }
      \hspace #0.5 % Spalte vom linken Rand wegbewegen
      \bold "4."
      \column {
        "Schneeflöckchen, Weißröckchen"
        "so kommet doch all’,"
        "dann wird bald ein Schneemann,"
        "dann werf’ ich den Ball."
      }
    }
  }
  \hspace #0.1
}

