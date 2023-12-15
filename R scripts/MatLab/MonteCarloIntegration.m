% Average rate of events (lambda)
lambda = 500; 

% Calculate the probability mass function (pmf) for each value from 490 to 510
k_values = 490:510;
pmf_values = poisspdf(k_values, lambda);

% Calculate the probability of having between 490 and 510 deaths
probability_between_490_and_510 = sum(pmf_values);

disp(['The probability of having between 490 and 510 deaths is: ' num2str(probability_between_490_and_510)]);