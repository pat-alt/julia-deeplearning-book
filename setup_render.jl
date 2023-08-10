using CondaPkg
CondaPkg.withenv() do
    @info "Rendering Quarto"
    Pkg.activate(@__DIR__)
    Pkg.resolve()
    Pkg.instantiate()
    Pkg.build("IJulia") # build IJulia to the right version.
    run(`quarto render $(tutorials_folder)`)
end