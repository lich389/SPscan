# SPscan

SPscan is a Python-based parameter scan framework for extended Higgs sector models (2HDMS, C2HDMS, N2HDM) using the SPheno + HiggsBounds/HiggsSignals + flavor + EVaDE scientific toolchain. It automates Les Houches input generation, runs SPheno model files, applies theoretical and experimental constraints, and saves filtered benchmark points.

## 📦 Features

- Random scanning (`scan.py`) with multi-processing.
- Grid/contour scanning (`gridscan.py`) with pre-defined parameter slices.
- Built-in checks:
  - boundedness from below
  - perturbative unitarity
  - EW precision (STU)
  - HiggsTools / HiggsBounds / HiggsSignals
  - flavor physics
  - vacuum stability (EVaDE)
  - optional dark matter (micrOMEGAs)
- Supports models:
  - `2hdms` (Z3 symmetric 2HDM + singlet)
  - `c2hdms` (CP-violating extension)
  - `n2hdm`

## 🗂️ Repository Layout

- `scan.py`: main random scan driver.
- `gridscan.py`: a grid/contour scan driver.
- `prefix.json`: path configuration for required tools/datasets.
- `inputs/`: JSON and LesHouches template input files.
- `lib/`: scanning utility library.
- `src/`: model-specific input/output wrappers.
- `plot/`: plotting notebooks/scripts.
- `Repository/`: model source directories for SARAH/SPheno etc.

## 🛠️ Requirements

### Python dependencies

- Python 3.8+ (tested)
- pandas
- numpy
- pylha

Install with:

```bash
pip install pandas numpy pylha
```

### External software (required at runtime)

Set full absolute paths in `prefix.json` before running.

- SPheno binaries for each model (e.g. `build/SPheno-4.0.5/bin/SPheno2hdms`) and model-specific `LesHouches.in.<model>` templates.
- HiggsBounds/HiggsSignals dataset directory (`hbdataset`, `hsdataset`).
- EVaDE build directory for vacuum stability checks.
- micrOMEGAs model directory for DM checks (optional).

## ⚙️ Setup

1. Clone repository:

```bash
git clone <your-repo-url> SPscan
cd SPscan
sh Setup.sh
```

2. Edit `prefix.json` paths to point to your local install paths:

- `memory`: (temporary scan output path, e.g. `/dev/shm/`)
- `scan`: project root path
- `input_path`: where `LesHouches.in.*` and `SPhenoInput` exist
- `SPheno`: SPheno build directory
- `hbdataset`, `hsdataset`: `HiggsBounds` and `HiggsSignals` dataset
- Edit `evade` directory if you need. Edit `micromega` directory if you want to check Dark matter observables

3. Ensure model files exist in `src/`: `src_2hdmsz3.py`, `src_2hdmscpv.py`, `src_n2hdm.py`.

4. Validate input JSON in `inputs/` as needed.

## ▶️ Run a random scan

```bash
python scan.py inputs/input_2HDMS.json
```

If no argument is supplied, `scan.py` uses default path:
`/home/licheng/Code/myscripts/sphenoscan/inputs/input_2HDMS.json`.

### `inputs/input_2HDMS.json` keys

- `model`: `2hdms`, `c2hdms`, or `n2hdm`
- `type`: Yukawa type, where `type:3` is Leptionic and `type:4` is Flipped
- `n_exp`: number of surviving points to collect (for repeated random batches)
- `n_threads`: number of parallel processes
- `n_run`: random points per batch
- `outdir`: final output directory name
- `*** check: 1` turn on the *** check
- `print check: 1` print out the constriants check for all scaned the points
`outdir` : the ouput folder directory

## ▶️ Run a grid scan

```bash
python gridscan.py
```

`gridscan.py` defines a `grid` class and specialized exploration routines.
Adjust the axis parameters and range in the `__main__` block.

## 📁 Output

- Generated directories: `output_<timestamp>/` in `prefix.json.memory` (e.g. `/dev/shm/`)
- SPheno outputs: `SPheno.spc.<model>` per point
- `masspar.json`, `results_*.csv`
- Final results moved into `outdir` (as configured in input JSON)

## 🧩 Tips

- Run from the project root to ensure relative paths using `prefix.json` work.
- Use `screen` or `tmux` for long scans.
- Remove temporary scans if disk/memory fills: e.g.

```bash
rm -rf /dev/shm/output_* /dev/shm/*_*/
```

## 🔍 Troubleshooting

- `python` errors from missing modules: install with pip.
- `SPheno` fails to generate `SPheno.spc.`: check model compilation and input templates in `inputs/`.
- Path errors: verify `prefix.json` keys and that all external tools exist.

## 📝 Contribution

- Add missing model support by creating `src/src_<model>.py` wrapper and template in `inputs/`.
- Extend checks in `lib/scanfunc.py`.

---

Made for phenomenology scans of 2HDM+singlet models; extend for your BSM pipeline by adapting model definitions in `src/` and constraints in `lib/`.  
