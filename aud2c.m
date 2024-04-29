%% File to convert audio file to c file

function aud2c(inputFile,outputAudio)

    [audio,Fs] = audioread(inputFile); %audio samples and sampling rate
    arraySize = numel(audio);
    norm_audio = audio/max(abs(audio)); %normalise samples to rangew between -1 and 1
    if max(abs(audio)) == 32787
        new_audio = int16(32768*norm_audio);
    else 
        new_audio = int16(32767*norm_audio);
    end 

    fd = fopen([outputAudio '.c'], 'wt');
    fprintf(fd,'//Audio data in the form of a C array. The audio samples are represented as 16-bit signed integers.\n');
    fprintf(fd, '//Sampling rate: %d Hz\n\n', Fs);
    %fprintf(fd,['const signed int ' outputAudio ' [%d] = \n{'], 5000);
    fprintf(fd,['const signed int ' outputAudio ' [%d] = \n{'], arraySize);
    %for i = 2501:7499
    for i = 1:(arraySize-1)
        fprintf(fd, '%d,', new_audio(i));
        if mod(i, 10) == 0
            fprintf(fd, '\n');
        end
    end
    %fprintf(fd, '%d};', new_audio(7500));
    fprintf(fd, '%d};', new_audio(end));

    fclose(fd);
end
