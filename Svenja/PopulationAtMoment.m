function N=PopulationAtMoment (t_row, r, N0)
N=exp(1).^(t_row+r+log(N0))
end