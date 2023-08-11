using Pkg
Pkg.activate(@__DIR__)
Pkg.status()
Pkg.resolve()
Pkg.instantiate()

# Always accept data downloads:
ENV["DATADEPS_ALWAYS_ACCEPT"] = "true"

# Conda and render:
using CondaPkg
CondaPkg.withenv() do
    Pkg.resolve()
    Pkg.instantiate()
    @info "Render book"
    Pkg.build("IJulia") # build IJulia to the right version.
    run(`quarto publish --no-prompt --no-browser`)
end