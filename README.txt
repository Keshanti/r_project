ReadMe for R Project based on data from "Flight of the bumble bee: buzzes predicts pollination services" 
by Nicole E. Miller-Struttmann, David Heise, Johannes Schul, Jennifer C. Geib, and Candace Galen

Author: Keshanti Tidwell

October, 16, 2017

This readme file describes the data that was used from the publication above, 
which can be found at this link:

http://datadryad.org/resource/doi:10.5061/dryad.43f8k

For further queries, please contact ktidwell4@patriots.uttyler.edu

The following files are included:

1) ?morph_flight_buzz_freq.csv?
This file contains information from files ?Bumble bee morphology and flight buzz frequency - alpine species.csv? 
and ?Bumble bee morphology and flight buzz frequency - literature survey.csv?, 
located in the referenced publication above. It was just renamed to make data parsing easier.
This file contains morphological measurements (tongue length, wing length, and intertegular distance) 
and flight buzz frequency from two alpine bumble bee species (Bombus balteatus and B. sylvicola), 
along with their caste and buzz number.

An object named ?morph? was produced from this file with preferred columns
(Species, TongueLength, WingLength, IntertegularDistance, and FlightBuzzFrequency)
for data analytics.

COLUMN DETAILS:
BeeNumber - a unique identifier given to each individual collected
Species - bumble bee species
Caste - bumble bee caste
BuzzNumber - the buzz replicate (1 through 3) for each individual
FlightBuzzFrequency - the characteristic frequency of the buzz in Hz
TongueLength - tongue length in mm
WingLength - wing length in mm
IntertegularDistance - the distance between the bases of the wings in mm

2) ?Figure1.pdf?
This file is a boxplot depicting the relationship between 
winglength and the two bumble bee species aforementioned. 

3) ?Figure2.pdf?
This file is a scatterplot used to compare buzz frequency between castes.

4) ?Figure3.pdf?
This file is a boxplot demonstrating buzz frequency amongst the two bumble bee species.

Statistical Test:
To investigate the significance of buzz frequency among the two species of bees
an ANOVA statistical test was performed. The relationship between buzz frequency 
among species proved to be extremely significant.
