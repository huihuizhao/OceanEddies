function [ old_tracks ] = export_tracks_simple( tracks )
%EXPORT_TRACKS_SIMPLE Will convert from new track format to simple matrix based
% tracks: new, struct based tracks list
    old_tracks = cell(1, length(tracks));
    for i = 1:length(tracks)
        old_tracks{i} = [tracks(i).Eddies.Lat ...
            tracks(i).Eddies.Lon ...
            tracks(i).Eddies.Date ...
            tracks(i).Eddies.SurfaceArea ...
            tracks(i).Eddies.Amplitude];
    end
end

