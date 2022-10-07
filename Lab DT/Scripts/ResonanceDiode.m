clc
clear all

%% Praca domowa
ele=1.602*10^(-19);
m_0 = 9.11e-31;
m = m_0 * ele;
l_0 = 1e-9;
V_0 = 0;
V_1 = 1;

masses = Masses(m, m, m, m, m);
lengths = Lengths(l_0, l_0, l_0);
energies = Energies(V_0, V_1, V_0, V_1, V_0);

figure(1);
plotResonanceGraph(masses, lengths, energies);

%% 2.2 a
masses = Masses(m, m, m, m, m);
lengths = Lengths(l_0, l_0, l_0);
energies = Energies(V_0, V_1, V_0, V_1, V_0);

figure(2);
plotResonanceGraph(masses, lengths, energies);
hold on
lengths = Lengths(l_0, l_0*1.2, l_0);
plotResonanceGraph(masses, lengths, energies);
lengths = Lengths(l_0, l_0*1.3, l_0);
plotResonanceGraph(masses, lengths, energies);
legend("w=1", "w=2", "w=3");


%% 2.2 b
masses = Masses(m, m, m, m, m);
lengths = Lengths(l_0, l_0, l_0);
energies = Energies(V_0, V_1, V_0, V_1, V_0);

figure(3);
plotResonanceGraph(masses, lengths, energies);
hold on
lengths = Lengths(l_0*1.2, l_0, l_0);
plotResonanceGraph(masses, lengths, energies);
lengths = Lengths(l_0, l_0, l_0*1.2);
plotResonanceGraph(masses, lengths, energies);
legend("b=1", "b=2", "b=3");

%% 2.2 c
masses = Masses(m, m, m, m, m);
lengths = Lengths(l_0, l_0, l_0);
energies = Energies(V_0, V_1, V_0, V_1, V_0);

figure(4);
plotResonanceGraph(masses, lengths, energies);
hold on
energies = Energies(V_0*1.2, V_1*1.1, V_0, V_1, V_0);
plotResonanceGraph(masses, lengths, energies);
energies = Energies(V_0, V_1*1.4, V_0, V_1, V_0);
plotResonanceGraph(masses, lengths, energies);
legend("V=1", "V=2", "V=3");

%% 2.2 d
masses = Masses(m, m, m, m, m);
lengths = Lengths(l_0, l_0, l_0);
energies = Energies(V_0, V_1, V_0, V_1, V_0);

figure(5);
plotResonanceGraph(masses, lengths, energies);
hold on
energies = Energies(V_0*1.2, V_1*1.1, V_0, V_1, V_0);
lengths = Lengths(l_0*1.2, l_0, l_0);
plotResonanceGraph(masses, lengths, energies);
lengths = Lengths(l_0*1.4, l_0, l_0);
energies = Energies(V_0, V_1*1.4, V_0, V_1, V_0);
plotResonanceGraph(masses, lengths, energies);
legend("VL=1", "VL=2", "VL=3");
