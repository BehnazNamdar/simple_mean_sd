
%% Write a function named “yourInitials_session2()”


% The function should take two inputs:
% 1) a string containing the subject’s code
% 2) a vector of 5 scores
% 
% The function should return two values:
% 1) the mean of the 5 scores, after removing the lowest one
% 2) the standard error of the mean of the 5 scores after removing the
% lowest one
% 
% The function should also do the following when run: 
% print the following line to the screen:
% “Working on subject XXXX...” where XXXX is the subject code



function [score_mean , score_sq] = mean_sd(subject_code , subject_score)

code = input('enter subject code');
score = input('enter a vector with 5 numbers') ;
min_subject_score = min(subject_score);

    new_subject_score = subject_score(find(subject_score ~= min_subject_score));

    average           = sum(new_subject_score)/numel(new_subject_score);
    sd                = sqrt(sum((new_subject_score - average).^2)/length(new_subject_score));

    fprintf('Working on subject %s \n', subject_code)

    pause(3)
    fprintf('subject %s '' scores average is %.2f and variance is %.2f', subject_code, average ,sd );
    
end




