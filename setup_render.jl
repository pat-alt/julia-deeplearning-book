using Pkg
Pkg.activate(@__DIR__)
Pkg.status()
Pkg.resolve()
Pkg.instantiate()
using CondaPkg
CondaPkg.withenv() do
    @info "Render book"
    Pkg.build("IJulia") # build IJulia to the right version.
    run(`quarto render`)
end