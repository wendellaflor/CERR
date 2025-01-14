function el = export_structure_set_referenced_series_sequence(args)
%Subfunction to handle export_structure_set_referenced_series_sequence 
%sequences within the structure_set module.  
%Uses the same layout and principle as the parent function.
%
%   This function takes a list of CERR scans (or scan UIDs if available)
%   and as data to have UIDs created for them.
%
%APA 08/28/2015
%NAV 07/19/16 updated to dcm4che3
%   replaced ml2dcm_Element to data2dcmElement
%
% Copyright 2010, Joseph O. Deasy, on behalf of the CERR development team.
% 
% This file is part of The Computational Environment for Radiotherapy Research (CERR).
% 
% CERR development has been led by:  Aditya Apte, Divya Khullar, James Alaly, and Joseph O. Deasy.
% 
% CERR has been financially supported by the US National Institutes of Health under multiple grants.
% 
% CERR is distributed under the terms of the Lesser GNU Public License. 
% 
%     This version of CERR is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
% CERR is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
% without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
% See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with CERR.  If not, see <http://www.gnu.org/licenses/>.

%Init output element to empty.
el = [];

%Unpack input data.
tag         = args.tag;
UID         = args.data{1};
%scansS      = args.data{2};
template    = args.template;

switch tag
    %Class 1 Tags -- Required, must have data.
    case 2097234    %0020,000E  Series Instance UID
        data = UID;
        el = data2dcmElement(data, tag); 

    otherwise
        warning(['No methods exist to populate DICOM structure_set module''s export_structure_set_referenced_series_sequence field ' dec2hex(tag,8) '.']);
end