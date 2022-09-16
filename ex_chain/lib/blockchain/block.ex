defmodule ExChain.BlockChain.Block do
  @moduledoc """
  This module is the single block struct in a blockchain
  """

  alias __MODULE__

  defstruct timestamp: pos_integer(), last_hash: String.t(), hash: String.t(), data: any()


  def new(timestamp, hash, last_hash, data) do
    %__MODULE__{timestamp: timestamp, last_hash: last_hash, hash: hash, data: data}
  end

  def genesis() do
    __MODULE__.new(1_599_909_623_805_627, "genesis-hash", "-", "genesis data")
  end
end
