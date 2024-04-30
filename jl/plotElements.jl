using Plots

function plotRefTriangle!(p)
    pts = [0 0; 1 0; 0 1; 0 0]
    plot!(p, pts[:,1], pts[:,2], label="", color=:gray)
end

function plotRefTriangle()
    p = plot(aspect_ratio=:equal)
    plotRefTriangle!(p)
    return p
end

function plot4P1P1()
    p = plotRefTriangle()
    vpts = [0 0; 0.5 0; 1 0; 0.5 0.5; 0 1; 0 0.5]
    ppts = [0 0; 1 0; 0 1]

    midIds = [2,4,6,2]
    plot!(p, vpts[midIds,1], vpts[midIds,2], label=:none, color=:gray)

    scatter!(p, vpts[:,1], vpts[:,2], label="", color = :green)
    scatter!(p, ppts[:,1], ppts[:,2], label="", marker=:xcross, markersize = 6, color = :red, markerstrokewidth=1.5)
    return p
end