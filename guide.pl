% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% House Stark Character Profiles 

%Eddard Stark 
house('eddard stark', stark).
male('eddard stark').
parent('eddard stark', 'robb stark'). 
parent('eddard stark', 'sansa stark'). 
parent('eddard stark', 'bran stark'). 
parent('eddard stark', 'arya stark'). 
parent('eddard stark', 'rickon stark'). 
killed('ser ilyn payne', 'eddard stark').
married('eddard stark', 'catelyn stark'). 

%Catelyn Stark 
house('catelyn stark', stark).
female('catelyn stark').
parent('catelyn stark', 'robb stark'). 
parent('catelyn stark', 'sansa stark'). 
parent('catelyn stark', 'bran stark'). 
parent('catelyn stark', 'arya stark'). 
parent('catelyn stark', 'sansa stark'). 
parent('catelyn stark', 'bran stark'). 
parent('catelyn stark', 'arya stark'). 
parent('catelyn stark', 'rickon stark'). 
killed('walder frey', 'catelyn stark'). 

%Robb Stark 
house('robb stark', stark).
male('robb stark').
killed('walder frey', 'robb stark')
married('robb stark', 'talisa stark').

%Sansa Stark 
house('sansa stark', stark).
female('sansa stark').
married('ramsay bolton', 'sansa stark').
married('joffrey baratheon', 'sansa stark').

%Bran Stark 
house('bran stark', stark).
male('bran stark').

%Arya Stark 
house('arya stark', stark).
female('arya stark').

%Rickon Stark 
house('rickon stark', stark).
male('rickon stark').
killed('ramsay bolton', 'rickon stark').

%Jon Snow 
house('jon snow', stark).
male('jon Snow'). 

% House Targaryen Character Profiles 

%Aegon Targaryen
house('aegon targaryen', targaryen).
male('aegon targaryen').
parent('aegon targaryen', 'jon snow').
killed('gregor clegane', 'aegon targaryen'). 

%Daenerys Targaryen
house('daenerys targaryen', targaryen).
female('daenerys targaryen', targaryen).
killed('jon snow', 'daenerys targaryen').
married('khal drogo' ,'daenerys targaryen').
married ('hizdahr zo loraq', 'daenerys targaryen'). 

% House Lannister Character Profiles

%Tywin Lannister 
house('tywin lannister', lannister).
male('tywin lannister').
parent('tywin lannister', 'jaime lannister').
parent('tywin lannister', 'cersei lannister').
parent('tywin lannister', 'tyrion lannister').
killed('tyrion lannister', 'tywin lannister'). 

%Jaime Lannister 
house('jaime lannister', lannister).
male('jaime lannister').
parent('jaime lannister', 'joffrey baratheon').
parent('jaime lannister', 'myrcella baratheon').

%Cersei Lannister 
house('cersei lannister', lannister).
female('cersei lannister').
parent('cersei lannister', 'joffrey baratheon').
parent('cersei lannister', 'myrcella baratheon').
married('robert baratheon', 'cersei lannister').

%Tyrion Lannister 
house('tyrion lannister', lannister).
male('tyrion lannister').
married('tyrion lannister', 'sansa stark').

% House Baratheon Character Profiles 

% Joffrey Baratheon 
house('joffrey baratheon', baratheon).
male('joffrey baratheon').
killed('petyr baelish', 'joffrey baratheon'). 
married('joffrey baratheon', 'margaery tyrell'). 

% Myrcella Baratheon 
house('myrcella baratheon', baratheon).
female('myrcella baratheon').
killed('ellaria sand', 'myrcella baratheon').

% Robert Baratheon 
house('robert baratheon', baratheon).
male('robert baratheon').
killed('boar','robert baratheon').

% Stannis Baratheon 
house('stannis baratheon', baratheon).
male('stannis baratheon').
killed('brienne of tarth', 'stannis baratheon').

% Renly Baratheon 
house('renly baratheon', baratheon).
male('renly baratheon').
killed('melisandre', 'renly baratheon').

% House Greyjoy Character Profiles

% Theon Greyjoy 
house('theon greyjoy', greyjoy).
male('theon greyjoy').
killed('night king', 'theon greyjoy').

% Yara Greyjoy 
house('yara greyjoy', greyjoy).
female('yara greyjoy').

% Balon Greyjoy 
house('balon greyjoy', greyjoy).
male('balon greyjoy').
parent('balon greyjoy', 'asha greyjoy').
parent('balon greyjoy', 'theon greyjoy').
killed('euron greyjoy', 'balon greyjoy').

% Other Character Profiles  

% Brienne of Tarth 
house('brienne of tarth', tarth).
female('brienne of tarth').

% Davos Seaworth
house('davos seaworth', seaworth).
male('davos seaworth').

% Samwell Tarly 
house('samewell tarly', tarly).
male('samewell tarly').

%Arianne Martell 
house('arianne martell', martell).
female('arianne martell').

%Petyr Baelish 
house('petyr baelish', baelish).
male('petyr baelish'). 
killed('sansa stark', 'petyr baelish').

%familial relationships 
father(A, B) :- male(A), parent(A, B). 
mother(A, B) :- female(A), parent(A, B).
child(A, B) :- parent(B, A).
daughter(A, B) :- female(A), parent(B, A).
son(A, B) :- male(A), parent(B, A).
sibling(A, B) :- parent(C, A), parent(C, B).
sister(A, B) :- female(A), parent(C, A), parent(C, B).
brother(A, B) :- male(A), parent(C, A), parent(C, B).
grandparent(A, C) :- parent(A, B), parent(B, C). 
grandfather(A, C) :- male(A), parent(A, B), parent(B, C). 
grandmother(A, C) :- female(A), parent(A, B), parent(B, C). 
husband(A, B) :- male(A), married(A, B).
wife(A, B) :- female(B), married(A, B). 

%status rules 
dead(A) :- killed(B, A). 
killer(A) :- killed(A, B).

/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/