function plotResonanceGraph(masses, lengths, energies)
    [usedEnergies, distribution] = getDistribution(lengths, masses, energies, [0, 1]);
    semilogy(usedEnergies, distribution);

    title("Prawdopodobie�stwo tunelowania rezonansowego");
    xlabel("E[eV]");
    ylabel("P");
end

