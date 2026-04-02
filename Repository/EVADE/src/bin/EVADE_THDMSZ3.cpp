#include "ConfigReader.hpp"
#include "EVADE/EVADE.hpp"
#include "EVADE/Models/THDMSZ3.hpp"
#include "ParameterReader.hpp"
#include "ProgressBar.hpp"
#include "StabilityOutput.hpp"

#include <algorithm>
#include <iostream>

using namespace EVADE;

int main(int argc, char *argv[]) try {
  using Model = Models::THDMSZ3;
  using StatConds =
      StationarityConditions<Model, Scaling::Generic, Solver::Hom4ps2>;

  if ((argc != 2) || (static_cast<std::string>("-h").compare(argv[1]) == 0) ||
      (static_cast<std::string>("--help").compare(argv[1]) == 0)) {
    std::cerr << "Usage: \n" << argv[0] << " path_to_cfg_file\n";
    return (EXIT_FAILURE);
  }

  ConfigReader cfg(argv[1]);
  std::string input, output, hom4ps2Path;
  std::vector<std::vector<std::string>> fieldSets;
  OutputType outType;

  if (!cfg.GetInputFile(input) || !cfg.GetOutputFile(output) ||
      !cfg.GetFieldSets(fieldSets) || !cfg.GetOutputType(outType)) {
    return (EXIT_FAILURE);
  }

  if (!cfg.GetHom4ps2Path(hom4ps2Path))
    hom4ps2Path = "/tmp/";

  auto reader = ParameterReader(input, Model::ParameterNames());

  auto writer = StabilityOutput(output, outType, Model::FieldNames());

  auto statConds = StatConds(Solver::Hom4ps2(hom4ps2Path));

  std::vector<double> pars;
  std::string pointID;

  std::cout << "Starting EVADE run in the THDMSZ3 using HOM4PS2.\n";
  std::cout << "-----------------------\n";
  std::cout << "Solving stationarity conditions for field sets:\n";
  for (const auto &fieldSet : fieldSets) {
    std::cout << "[ ";
    for (const auto &field : fieldSet) {
      std::cout << field << " ";
    }
    std::cout << " ]\n";
  }

  ProgressBar pBar(reader.NPoints());
  while (reader.GetPoint(pointID, pars)) {
    ++pBar;
    try {
      // ----------------------------------------------------------------------
      // these two lines do the actual work, everything else just iterates over
      // parameter points and handles options
      auto result = CalculateTunnelling<Model>(
          SolveForFieldSets(statConds, pars, fieldSets), pars);
      // ----------------------------------------------------------------------
      writer.Write(pointID, result);
    } catch (std::exception &ex) {
      std::cout << "Exception for point " << pointID
                << ", skipping: " << ex.what() << std::endl;
    }
  }
}

catch (std::exception &ex) {
  std::cerr << ex.what() << "\n";
  return (EXIT_FAILURE);
}
