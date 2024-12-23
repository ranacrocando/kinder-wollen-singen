\version "2.24.2"

EKE_title = "Es kommt ein Schiff geladen"
EKE_composer = "Traditionell"
EKE_poet = "Johannes Tauler (1300 - 1361) und Daniel Sudermann (1550 - 1631)"
EKE_copyright =  "Public Domain"
EKE_arranger =  "Gesetzt für kinder-wollen-singen.de"

EKE_AvoiceAA = \relative c'{
  \set Staff.instrumentName = #""
  \set Staff.shortInstrumentName = #""
  \clef treble
  %staffkeysig
  \key f \major
  %barkeysig:
  \key f \major
  %bartimesig:
  \time 6/4
  \partial 4
  d4     d2 d4 e2 e4      | % 1
  f( g a) a2 a4      | % 2
  g2 g4 d2 e4      | % 3
  f2. ^\markup{\musicglyph #"four four meter"} f4
  a4 c d d
  c8  (bes a g) f4 g ^\markup {\upright  ""}
  a4 g f e
  d2. r4 r2
}% end of last bar in partorvoice

EKE_ApartAverseA = \lyricmode { \set stanza = " 1. " Es kommt ein Schiff, ge -- la -- den bis an sein höchs -- ten  Bord, trägt Got -- tes  Sohn voll Gna --  den, des Va -- ters  e -- wigs  Wort. }
theChords = \chordmode {
  s4             d2.:m a2.:m d1.:m g2.:m d2:m c4 f1. b2 c2 d2:m f4 c4 d4:m a4 d4:m
}%%end of chordlist


EKE_Score = \score {
  <<
    \new ChordNames { \theChords }
    \context Staff = ApartA <<
      \context Voice = EKE_AvoiceAA \EKE_AvoiceAA
    >>

    \context Lyrics = EKE_ApartAverseA\lyricsto EKE_AvoiceAA  \EKE_ApartAverseA
    %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
    \set Score.majorSevenSymbol = \markup {maj7}
  >>
}%% end of score-block


EKE_Strophen = \markup {
  \hspace #0.1
  \column {
    \line {
      \bold "2."
      \column {
        "Das Schiff geht still im Triebe,"
        "es trägt ein teure Last;"
        "das Segel ist die Liebe,"
        "der Heilig Geist der Mast."
      }
    }
    \hspace #0.1
    \line {
      \bold "4."
      \column {
        "Zu Bethlehem geboren"
        "im Stall ein Kindelein,"
        "gibt sich für uns verloren;"
        "gelobet muss es sein."
      }
    }
    \hspace #0.1
    \line {
      \bold "6."
      \column {
        "Danach mit ihm auch sterben"
        "und geistlich auferstehn,"
        "Ewigs Leben zu erben,"
        "wie an ihm ist geschehn. "
      }
    }
  }
  \hspace #0.1
  \column {
    \line {
      \bold "3."
      \column {
        "Der Anker haft’ auf Erden,"
        "da ist das Schiff am Land."
        "Gott's Wort tut uns Fleisch werden,"
        "der Sohn ist uns gesandt."
      }
    }
    \hspace #0.1
    \line {
      \bold "5."
      \column {
        "Und wer dies Kind mit Freuden"
        "umfangen, küssen will,"
        "muss vorher mit ihm leiden"
        "groß Pein und Marter viel."
      }
    }
  }
  \hspace #0.1
}
