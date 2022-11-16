# Clean up anything from previous runs
sh cleanup.sh

# Make directory structure for outputs
mkdir data
mkdir data/dgnetwork 
mkdir data/fi-curves

mkdir figures 
mkdir figures/raster-plots
mkdir figures/pattern-separation
mkdir figures/voltage-tracings
mkdir figures/fi-curves

# Get FI Curves

# Run DG Model 
nrnivmodl mods
nrniv main.hoc

# Plot Network Structure

# Analyze Data 
julia analysis.jl
