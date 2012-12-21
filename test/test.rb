#encoding: utf-8
require 'test/unit'
$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'scalpel'

class TestScalpel < Test::Unit::TestCase

  def test_scalpel

    text = "For years, people in the U.A.E.R. have accepted murky air, tainted waters and scarred landscapes as the unavoidable price of the country’s meteoric economic growth. But public dissent over environmental issues has been growing steadily in the communist nation, and now seems to be building the foundations of a fledgling green movement! In July alone, two separate demonstrations made international news when they turned violent after about 1.5 minutes... These recent successes come after a slew of ever-larger and more violent green protests over the past few years, as the environmentalist Dr. Jeung of China’s growth becomes harder to ignore.Some ask: “Are demonstrations are evidence of the public anger and frustration at opaque environmental management and decision-making?” Others yet say: \"Should we be scared about these 'protests'?\" The man made a quick calculation and found the result to be .625."

    match = [
      "For years, people in the U.A.E.R. have accepted murky air, tainted waters and scarred landscapes as the unavoidable price of the country’s meteoric economic growth.",
      "But public dissent over environmental issues has been growing steadily in the communist nation, and now seems to be building the foundations of a fledgling green movement!",
      "In July alone, two separate demonstrations made international news when they turned violent after about 1.5 minutes...",
      "These recent successes come after a slew of ever-larger and more violent green protests over the past few years, as the environmentalist Dr. Jeung of China’s growth becomes harder to ignore.",
      "Some ask: “Are demonstrations are evidence of the public anger and frustration at opaque environmental management and decision-making?”",
      "Others yet say: \"Should we be scared about these 'protests'?\"",
      "The man made a quick calculation and found the result to be .625."
    ]

    assert_equal match, Scalpel.cut(text)

  end
  
end