function varargout = maintry2(varargin)
% MAINTRY2 MATLAB code for maintry2.fig
%      MAINTRY2, by itself, creates a new MAINTRY2 or raises the existing
%      singleton*.
%
%      H = MAINTRY2 returns the handle to a new MAINTRY2 or the handle to
%      the existing singleton*.
%
%      MAINTRY2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINTRY2.M with the given input arguments.
%
%      MAINTRY2('Property','Value',...) creates a new MAINTRY2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before maintry2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to maintry2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help maintry2

% Last Modified by GUIDE v2.5 24-Apr-2023 14:34:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @maintry2_OpeningFcn, ...
                   'gui_OutputFcn',  @maintry2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before maintry2 is made visible.
function maintry2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to maintry2 (see VARARGIN)

% Choose default command line output for maintry2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes maintry2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global speed;
k=3.2*randperm(7);
set(handles.cb1,'Position',[k(1)*10 55 9 3]);
set(handles.cb2,'Position',[k(2)*10 55 9 3]);
set(handles.cb3,'Position',[k(3)*10 55 9 3]);
set(handles.cb4,'Position',[k(4)*10 55 9 3]);
set(handles.cb5,'Position',[k(5)*10 55 9 3]);
set(handles.cb6,'Position',[k(6)*10 55 9 3]);
set(handles.cb7,'Position',[k(7)*10 55 9 3]);

% --- Outputs from this function are returned to the command line.

function varargout = maintry2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in cb1.

function d1_Callback(hObject, eventdata, handles)
% hObject    handle to d1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of d1
global speed;
speed=100000;


% --- Executes on button press in d2.
function d2_Callback(hObject, eventdata, handles)
% hObject    handle to d2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of d2
global speed;
speed=10000;


% --- Executes on button press in d3.
function d3_Callback(hObject, eventdata, handles)
% hObject    handle to d3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of d3
global speed;
speed=1000;


% --- Executes on button press in d4.
function d4_Callback(hObject, eventdata, handles)
% hObject    handle to d4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of d4
global speed;
speed=100;


function cb1_Callback(hObject, eventdata, handles)
% hObject    handle to cb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=get(handles.count,'String');
q=extractAfter(p,':');
r=str2num(q);
r=num2str(r+5);
p=replace(p,q,r);
set(handles.count,'String',p)
set(handles.top,'String',"Yesss, Centipedes are the WORST     +5     ",'BackgroundColor',rand(1,3))

load chirp
y=y(1:1640);
sound(y,Fs)






% --- Executes on button press in cb2.
function cb2_Callback(hObject, eventdata, handles)
% hObject    handle to cb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=get(handles.count,'String');
q=extractAfter(p,':');
r=str2num(q);
r=num2str(r+2);
p=replace(p,q,r);
set(handles.count,'String',p)
set(handles.top,'String',"Diee, Because the Ant-Man Movies Suck  +2     ",'BackgroundColor',rand(1,3))

load chirp
y=y(1:1640);
sound(y,Fs)



% --- Executes on button press in cb3.
function cb3_Callback(hObject, eventdata, handles)
% hObject    handle to cb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=get(handles.count,'String');
q=extractAfter(p,':');
r=str2num(q);
r=num2str(r-3);
p=replace(p,q,r);
set(handles.count,'String',p)
set(handles.top,'String',"DO NOT TOUCH THE LADY     -3     ",'BackgroundColor',rand(1,3))


load chirp
y=y(1:1640);
sound(y,Fs)



% --- Executes on button press in cb4.
function cb4_Callback(hObject, eventdata, handles)
% hObject    handle to cb4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=get(handles.count,'String');
q=extractAfter(p,':');
r=str2num(q);
r=num2str(r+2);
p=replace(p,q,r);
set(handles.count,'String',p)
set(handles.top,'String',"Spiders are Scary     +2     ",'BackgroundColor',rand(1,3))

load chirp
y=y(1:1640);
sound(y,Fs)



% --- Executes on button press in cb5.
function cb5_Callback(hObject, eventdata, handles)
% hObject    handle to cb5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=get(handles.count,'String');
q=extractAfter(p,':');
r=str2num(q);
r=num2str(r+2);
p=replace(p,q,r);
set(handles.count,'String',p)
set(handles.top,'String',"That's the way  That's the way     +2     ",'BackgroundColor',rand(1,3))



load chirp
y=y(1:1640);
sound(y,Fs)



% --- Executes on button press in cb6.
function cb6_Callback(hObject, eventdata, handles)
% hObject    handle to cb6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=get(handles.count,'String');
q=extractAfter(p,':');
r=str2num(q);
r=num2str(r-5);
p=replace(p,q,r);
set(handles.count,'String',p)
set(handles.top,'String',"Only Psychopaths Kill Butterflies     -5     ",'BackgroundColor',rand(1,3))


load chirp
y=y(1:1640);
sound(y,Fs)



% --- Executes on button press in cb7.
function cb7_Callback(hObject, eventdata, handles)
% hObject    handle to cb7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=get(handles.count,'String');
q=extractAfter(p,':');
r=str2num(q);
r=num2str(r+1);
p=replace(p,q,r);
set(handles.count,'String',p)
set(handles.top,'String',"Beeeeeeeeeeeeee     +1     ",'BackgroundColor',rand(1,3))



load chirp
y=y(1:1640);
sound(y,Fs)



% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load gong
sound(y,Fs)
t=0;

 k1=get(handles.cb1,'Position');
 k2=get(handles.cb2,'Position');
 k3=get(handles.cb3,'Position');
 k4=get(handles.cb4,'Position');
 k5=get(handles.cb5,'Position');
 k6=get(handles.cb6,'Position');
 k7=get(handles.cb7,'Position');
 time=60;
 tic
 start_time=tic;
 global speed;
 speed=100000;
 l=0
while(l<60)
    
    k1(1)=mod((k1(1)-32),250)+32;k2(1)=mod((k2(1)-32),250)+32;k3(1)=mod((k3(1)-32),250)+32;k4(1)=mod((k4(1)-32),250)+32;k5(1)=mod((k5(1)-32),250)+32;k6(1)=mod((k6(1)-32),250)+32;k7(1)=mod((k7(1)-32),250)+32;                       
    k1(2)=mod((k1(2)-2.5),60)+2.5;k2(2)=mod((k2(2)-2.5),60)+2.5;k3(2)=mod((k3(2)-2.5),60)+2.5;k4(2)=mod((k4(2)-2.5),60)+2.5;k5(2)=mod((k5(2)-2.5),60)+2.5;k6(2)=mod((k6(2)-2.5),60)+2.5;k7(2)=mod((k7(2)-2.5),60)+2.5;
   
   set(handles.cb1,'Position',k1)
   set(handles.cb2,'Position',k2)
   set(handles.cb3,'Position',k3)
   set(handles.cb4,'Position',k4)
   set(handles.cb5,'Position',k5)
   set(handles.cb6,'Position',k6)
   set(handles.cb7,'Position',k7)
   
   k1(1)=k1(1)+0.05;k1(2)=k2(2)+20*sin(15*t);
   k2(1)=35*sin(11*t)-55;k2(2)=40*cos(11*t);
   k3(1)=2000*sin(t)*cos(t);k3(2)=40*cos(15*t);
   k4(1)=60*(sin(50*t)+.5*cos(50*t)*cos(55*t*t));k4(2)=40*cos(11*t);
   k5(1)=-k1(1);k5(2)=-k2(2);
   k6(1)=-k2(1);k6(2)=-k1(2);
   k7(1)=-k3(1);k7(2)=k7(1)*0.5+20*sin(20*t);
   
   pause(0.0000000001)
   t=t+1/speed;
   
   l=ceil(toc);
   
   str=num2str(60-l);
   b=strcat("Time Remaining: ",str);
   set(handles.time,'String',b)
  
       

end
load handel
sound(y,Fs)
while (1)
       set(handles.end1,'Visible','on','BackgroundColor',rand(1,3),'ForegroundColor',rand(1,3))
       em=extractAfter(get(handles.count,'String'),':');
       endmsg=strcat("Your Score is: ",em); 
       set(handles.end2,'Visible','on','String',endmsg,'BackgroundColor',rand(1,3),'ForegroundColor',rand(1,3))
       pause(1.2) 
end
