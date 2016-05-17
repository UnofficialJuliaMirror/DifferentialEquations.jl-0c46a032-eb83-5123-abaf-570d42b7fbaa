#!/usr/bin/env julia

#Start Test Script
using DifferentialEquations
using Base.Test

# Run tests

tic()
println("Finite Element Heat Dt Tests")
@time @test include("femHeatDtTests.jl")
println("Finite Element Heat Dx Tests")
@time @test include("femHeatDXtests.jl")
println("Finite Element Heat Method Tests")
@time @test include("femHeatMethodTest.jl")
println("Finite Element Nonlinear Heat Methods Tests")
@time @test include("femHeatNonlinearMethodsTest.jl")
println("Finite Element Poisson Convergence Test")
@time @test include("femPoissonConvTest.jl")
println("Finite Element Nonlinear Poisson Tests")
@time @test include("femPoissonNonlinearTest.jl")
println("Finite Element Stochastic Poisson")
@time @test include("femStochasticPoissonSolo.jl")
println("Finite Element Poisson")
@time @test include("introductionExample.jl")
println("Heat Animation Test")
@time @test include("femHeatAnimationTest.jl")
println("Stochastic Heat Animation Test")
@time @test include("femStochasticHeatAnimationTest.jl")
println("Example Mesh Tests")
@time @test include("exampleMeshTests.jl")
println("Simple Mesh Tests")
@time @test include("simpleMeshTests.jl")
println("Meshgrid Tests")
@time @test include("meshgridTests.jl")
println("Quadrature Points Tests")
@time @test include("quadptsTest.jl")
println("Number of Parameters Calc Tests")
@time @test include("numParametersTest.jl")
println("Assembly Tests")
@time @test include("assemblyTests.jl")
println("Boundary Tests")
@time @test include("boundaryTests.jl")
toc()
