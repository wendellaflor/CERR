function cerrToNii(scanNum,structNumV,niiOutDir,planC)
% function cerrToNii(scanNum,structNumV,niiOutDir,planC)
%
% APA, 12/2/2022

indexS = planC{end};

reorientFlag = 1; %realign image to RAS
niiDataType = 'int16';
if ismember(class(planC{indexS.scan}(scanNum)),{'single','double'})
    niiDataType = 'double';
end
scanFileNameC = scan2imageOut(planC,scanNum,niiOutDir,reorientFlag,'nii',niiDataType);
if ~isempty(structNumV)
    maskFileNameC = mask2imageOut(planC,scanNum,structNumV,niiOutDir,reorientFlag,'nii');
end
