function curlDownload(remoteFilePath,localFilePath)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function to download file via system curl command
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

curlCommand = sprintf('curl %s --output %s',remoteFilePath,localFilePath);
%fprintf('curl command: "%s"\n',curlCommand); % For debug
[status,cmdOut] = system(curlCommand);
fprintf('%s\n',cmdOut);
if status == 0
    fprintf('File "%s" downloaded successfully!\n',obj.satInfoFile);
else
    error('curl download failed!');
end