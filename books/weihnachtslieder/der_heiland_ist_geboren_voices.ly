\version "2.24.2"

DHI_title = "Der Heiland ist geboren"
DHI_composer = "Traditionell (Innsbruck 19. Jhdt.)"
DHI_poet = "Traditionell"
DHI_copyright = "Public Domain"
DHI_arranger = "Gesetzt für kinder-wollen-singen.de"

DHI_AvoiceAA = \relative c'{
  \set Staff.instrumentName = #""
  \set Staff.shortInstrumentName = #""
  \clef treble
  %staffkeysig
  \key f \major
  \repeat volta 2 {
    %barkeysig:
    \key f \major
    %bartimesig:
    \time 6/4
    \partial 4
    f4     f( c) a' f( c) a'      | % 1
    f( f' e8 d) c2 c4      | % 2
    bes( g) bes a( f) a    |
    \partial 8*6
    g2.
  }   | % 3
  \break
  \partial 4
  c4      | % 3
  c( g) c c a c      | % 4
  c( bes) a g2 c4 % end of repeatactive
  | % 5
  c4( g) c c( a) c      | % 6
  c( bes) a g2 f4      | % 7
  f( c) a' f c a'      | % 8
  f( f') e8( d) c2 c4      | % 9
  bes( g) c a( f) c'8( d)      | % 10
  c4( bes) g f2 \bar "|."
}% end of last bar in partorvoice

DHI_ApartAverseA = \lyricmode { \set stanza = " 1. " Der Hei -- land ist ge -- bo -- ren, freu dich, o Chri -- sten -- heit, Freut euch von Her -- zen, ihr Chri -- sten all', kommt her zum Kind -- lein in dem Stall, freut euch von Her -- zen, ihr Chri -- sten all',  kommt her zum Kind -- lein in dem Stall. }
DHI_ApartAverseB = \lyricmode { \set stanza = " 2. " sonst wär'n wir gar ver -- lor -- ren in al -- le E -- wig -- keit. __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ __ _ }

DHI_Score = \score {
  <<
    \context Staff = DHI_ApartA <<
      \context Voice = DHI_AvoiceAA \DHI_AvoiceAA
    >>

    \context Lyrics = DHI_ApartAverseA\lyricsto DHI_AvoiceAA  \DHI_ApartAverseA
    \context Lyrics = DHI_ApartAverseB\lyricsto DHI_AvoiceAA  \DHI_ApartAverseB

    \set Score.skipBars = ##t
    %%\set Score.melismaBusyProperties = #'()
    \override Score.BarNumber.break-visibility = #end-of-line-invisible %%every bar is numbered.!!
    %% remove previous line to get barnumbers only at beginning of system.
    #(set-accidental-style 'modern-cautionary)
    \override Score.TimeSignature.style = #'() %%makes timesigs always numerical
    %% remove previous line to get cut-time/alla breve or common time
    \set Score.pedalSustainStyle = #'mixed
    %% make spanners comprise the note it end on, so that there is no doubt that this note is included.
    \override Score.TrillSpanner.bound-details.right.padding = #-2
    \override Score.TextSpanner.bound-details.right.padding = #-1
    %% Lilypond's normal textspanners are too weak:
    \override Score.TextSpanner.dash-period = #1
    \override Score.TextSpanner.dash-fraction = #0.5
    %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
    \override Score.ChordName.font-family = #'roman
    \override Score.ChordName.font-size = #0
    %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
    \set Score.majorSevenSymbol = \markup {maj7}
  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  \layout {\context {\Score \consists Span_bar_engraver}}
}%% end of score-block


DHI_Strophen = \markup {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "2."
        \column {
          "Das Kindlein auserkoren,"
          "Freu dich, o Christenheit,"
          "Das in dem Stall geboren,"
          "Hat Himmel und Erd erfreut."
          "|: Freut euch von Herzen, ihr Christen all,"
          "Kommt her zum Kindlein in dem Stall. :|"

        }
      }
      \hspace #0.1
      \line {
        \bold "4."
        \column {
          "Den Frieden sie verkünden!"
          "Freu dich, du Christenheit!"
          "Verzeihung aller Sünden"
          "Ist uns im Stall bereit't"
          "Refrain:"

        }
      }
    }
    \hspace #0.1
    \column {
      \line {
        \bold "3."
        \column {
          "Die Engel lieblich singen,"
          "Freu dich, du Christenheit,"
          "Tun gute Botschaft bringen,"
          "Verkündigen große Freud."
          "Refrain:"

        }
      }
      \hspace #0.1
      \line {
        \bold "5."
        \column {
          "Der Gnadenbrunn tut fließen."
          "Freu dich, du Christenheit!"
          "Tut alle das Kindlein grüßen,"
          "Kommt her zu ihm mit Freud!"
          "Refrain:"
        }
      }
    }
    \hspace #0.1
  }
}
