@info "Setting up render environment"
Pkg.activate(@__DIR__)
Pkg.resolve()
Pkg.instantiate()
Pkg.build("IJulia") # build IJulia to the right version.