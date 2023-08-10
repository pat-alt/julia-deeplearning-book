@info "Setting up render environment"
using Pkg
Pkg.activate(@__DIR__)
Pkg.status()
Pkg.resolve()
Pkg.instantiate()
Pkg.build("IJulia") # build IJulia to the right version.