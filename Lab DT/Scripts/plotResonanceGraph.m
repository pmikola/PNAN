function plotResonanceGraph(masses, lengths, energies)
    [usedEnergies, distribution] = getDistribution(lengths, masses, energies, [0, 1]);
    semilogy(usedEnergies, distribution);

    title("Prawdopodobieñstwo tunelowania rezonansowego");
    xlabel("E[eV]");
    ylabel("P");
end

