function downloadChildMindData()
% DOWNLOADCHILDMINDDATA Downloads ChildMind dataset from AWS S3
% Downloads training, validation, and testing files from the open source 
% AWS S3 bucket: s3://childmind/matlab
%
% Stores the data in separate cell arrays and saves them as MAT files.
%
% 8.14.2012 - Alex Estrada - %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define folder paths
folders = {'test', 'val', 'train'};
s3_bucket = 's3://childmind/matlab/';

% Loop through folders (test, val, train)
for f = 1:numel(folders)
    folder_path = [s3_bucket, folders{f}, '/'];
    
    % Check if MAT file already exists for this folder
    if exist([folders{f}, '_data_cell.mat'], "file") == 2
        disp([upper(folders{f}(1)), folders{f}(2:end), ' files detected.']);
        continue;
    end
    
    folder_info = dir(folder_path);
    data_cell = cell(numel(folder_info), 1);
    
    % Initialize progress bar
    
    num_files = numel(folder_info);
    fprintf('Downloading %s files: [%d files found]', folders{f}, num_files);

    % Loop through files in the folder
    for i = 1:num_files
        file_path = [folder_path, folder_info(i).name];

        temp = load(file_path);
        data_cell{i} = temp.sample;
    end
    fprintf(' - Complete - \n');
    
    % Save data as MAT file
    if ~isempty(data_cell{1})
        save([folders{f}, '_data_cell.mat'], 'data_cell');
        disp([upper(folders{f}(1)), folders{f}(2:end), ' files downloaded.']);
    end
end

disp('Downloading files complete.');
end