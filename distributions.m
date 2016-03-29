%Function MAIN

function distributions
clear all; clc;
fprintf('---------------\n');
fprintf('\n');
fprintf('Gaussian distributions 1:\n');
fprintf('Reyleigh distributions 2:\n');
fprintf('\n');
x = input('Your chouse: '); 
fprintf('\n');
n = input('Number of samples:');

if (x==1)     
    ave = input('Give the average :');
    var = input('Give the variance :');
    
    % create Gaussian signal
    f = sqrt(var);
    for k=1:n
    out(k)= f*randn + ave;
    end
    % end Gaussian signal
    
elseif (x==2)
    var = input('Give the variance :');
    
    % create Reyleigh signal
    f = sqrt(var);
    for  k=1:n
    u=rand;
    out(k) = f*sqrt(-2*log(u));
    end  
end

% grow Time history of the random array
figure(1);
plot(out);
xlim([0, n]);
xlabel('Sample No');
ylim([0, var]);
ylabel('Signal');
title('Time history of the random array');

% grow distributions signal
figure(2);
hist(out,50); 
title('distributions');
end

% END of MAIN