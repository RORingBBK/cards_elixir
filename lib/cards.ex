defmodule Cards do

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    # Bad approach as result will of list of list i.e list of array
    # for value <- values do
    #   for suit <- suits do
    #     "#{value} of #{suit}"
    #   end
    # end

    # First solution
    # cards = for value <- values do
    #           for suit <- suits do
    #             "#{value} of #{suit}"
    #           end
    #         end

    # List.flatten(cards)

    #Second solution (Preferable approach)
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, hand) do
    Enum.member?(deck, hand)
  end

  def deal(deck, hand_size) do
    Enum.split(dech, hand_size)
  end

end
