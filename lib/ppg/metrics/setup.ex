defmodule Ppg.Metrics.Setup do
  def setup do
    PpgWeb.MetricsExporter.setup()
  end
end
