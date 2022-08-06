using SolidState
using Documenter

DocMeta.setdocmeta!(SolidState, :DocTestSetup, :(using SolidState); recursive=true)

makedocs(;
    modules=[SolidState],
    authors="itsgt <islagle3@gatech.edu> and contributors",
    repo="https://github.com/itsgt/SolidState.jl/blob/{commit}{path}#{line}",
    sitename="SolidState.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://itsgt.github.io/SolidState.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/itsgt/SolidState.jl",
    devbranch="main",
)
