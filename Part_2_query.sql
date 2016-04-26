select title from Album where year > 2010; #query 1 
select title from Track where album is null and genre = 'Pop'; #query 2 
select Album.title from Album, Track where Album.ID = Track.album group by title having count(distinct Track.genre) > 1; #query 3 
select distinct contributor from Contributes, Track where Track.playCount > 50 and Track.ID = Contributes.track; #query 4 
select Album.title, sum(playCount) from  Album, Track where Album.ID = Track.album group by Album.title order by sum(playCount) desc; #query 5 
select distinct contributor from Track, Contributes where Track.ID = Contributes.track and playCount in(select max(playCount) from Track); #query 6 
select distinct Album.title, Track.title from Album left join Track on Album.ID = Track.album order by Album.title; #query 7
select distinct Track.title from Track, Contributes where contributor = 'eminem' and Contributes.track = Track.ID;# query 8 
select distinct contributor, Track.title from Track, Contributes where (role ='writer' or role = 'singer') and Contributes.track = Track.ID order by contributor; #query 9 
select E.contributor,Track.title from Contributes as D, Contributes as E, Track where D.track = E.track and Track.id = E.track and D.contributor = E.contributor and D.role = 'Writer' AND  E.role = 'Singer' #query 10 
