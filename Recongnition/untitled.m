function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 21-Nov-2018 21:33:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
[name,path]=uigetfile({'*.jpg'},'载入图像');
if isequal(name,0)||isequal(path,0)
errordlg('没有选中文件','出错');
return;
else
x=imread([path,name]);
axes(handles.axes1);
imshow(x);
handles.img=x;
handles.noise_img=x;
guidata(hObject,handles)
r1=x(300,300,1);
g1=x(300,300,2);
b1=x(300,300,3);
r2=x(300,1500,1);
g2=x(300,1500,2);
b2=x(300,1500,3);
r3=x(300,2700,1);
g3=x(300,2700,2);
b3=x(300,2700,3);
r4=x(1500,300,1);
g4=x(1500,300,2);
b4=x(1500,300,3);
r5=x(1500,1500,1);
g5=x(1500,1500,2);
b5=x(1500,1500,3);
r6=x(1500,2700,1);
g6=x(1500,2700,2);
b6=x(1500,2700,3);
r7=x(2700,300,1);
g7=x(2700,300,2);
b7=x(2700,300,3);
r8=x(2700,1500,1);
g8=x(2700,1500,2);
b8=x(2700,1500,3);
r9=x(2700,2700,1);
g9=x(2700,2700,2);
b9=x(2700,2700,3);
size(x); %计算图片矩阵维度。
RGB=[r1,g1,b1;r2,g2,b2;r3,g3,b3;r4,g4,b4;r5,g5,b5;r6,g6,b6;r7,g7,b7;r8,g8,b8;r9,g9,b9;];
i=1;
while(i<=9)
    if RGB(i,1)>=165&&RGB(i,1)<=175&&RGB(i,2)>=35&&RGB(i,3)<=45&&RGB(i,3)>=35&&RGB(i,3)<=45
    Color1(i)='F';
else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=115&&RGB(i,2)<=125&&RGB(i,3)>=50&&RGB(i,3)<=60
    Color1(i)='R';
  
    else if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=85&&RGB(i,2)<=95&&RGB(i,3)>=35&&RGB(i,3)<=45
     Color1(i)='B';
    
        else  if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=185&&RGB(i,2)<=205&&RGB(i,3)>=55&&RGB(i,3)<=65
     Color1(i)='U';
    
            else if RGB(i,1)>=0&&RGB(i,1)<=10&&RGB(i,2)>=0&&RGB(i,2)<=10&&RGB(i,3)>=0&&RGB(i,3)<=10
    Color1(i)='D';
    
                else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=15&&RGB(i,2)<=25&&RGB(i,3)>=60&&RGB(i,3)<=70
    Color1(i)='L';
    
                    else 
       Color1(i)='E';
                    end
                end
            end
        end
    end
    end
    i=i+1;
end
set(handles.edit,'string',Color1(:));
guidata(hObject,handles);
end
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
[name,path]=uigetfile({'*.jpg'},'载入图像');
if isequal(name,0)||isequal(path,0)
errordlg('没有选中文件','出错');
return;
else
x=imread([path,name]);
axes(handles.axes1);
imshow(x);
handles.img=x;
handles.noise_img=x;
guidata(hObject,handles)
r1=x(300,300,1);
g1=x(300,300,2);
b1=x(300,300,3);
r2=x(300,1500,1);
g2=x(300,1500,2);
b2=x(300,1500,3);
r3=x(300,2700,1);
g3=x(300,2700,2);
b3=x(300,2700,3);
r4=x(1500,300,1);
g4=x(1500,300,2);
b4=x(1500,300,3);
r5=x(1500,1500,1);
g5=x(1500,1500,2);
b5=x(1500,1500,3);
r6=x(1500,2700,1);
g6=x(1500,2700,2);
b6=x(1500,2700,3);
r7=x(2700,300,1);
g7=x(2700,300,2);
b7=x(2700,300,3);
r8=x(2700,1500,1);
g8=x(2700,1500,2);
b8=x(2700,1500,3);
r9=x(2700,2700,1);
g9=x(2700,2700,2);
b9=x(2700,2700,3);
size(x); %计算图片矩阵维度。
RGB=[r1,g1,b1;r2,g2,b2;r3,g3,b3;r4,g4,b4;r5,g5,b5;r6,g6,b6;r7,g7,b7;r8,g8,b8;r9,g9,b9;];
i=1;
while(i<=9)
    if RGB(i,1)>=165&&RGB(i,1)<=175&&RGB(i,2)>=35&&RGB(i,3)<=45&&RGB(i,3)>=35&&RGB(i,3)<=45
    Color2(i)='F';
else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=115&&RGB(i,2)<=125&&RGB(i,3)>=50&&RGB(i,3)<=60
    Color2(i)='R';
  
    else if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=85&&RGB(i,2)<=95&&RGB(i,3)>=35&&RGB(i,3)<=45
     Color2(i)='B';
    
        else  if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=185&&RGB(i,2)<=205&&RGB(i,3)>=55&&RGB(i,3)<=65
     Color2(i)='U';
    
            else if RGB(i,1)>=0&&RGB(i,1)<=10&&RGB(i,2)>=0&&RGB(i,2)<=10&&RGB(i,3)>=0&&RGB(i,3)<=10
    Color2(i)='D';
    
                else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=15&&RGB(i,2)<=25&&RGB(i,3)>=60&&RGB(i,3)<=70
    Color2(i)='L';
    
                    else 
       Color2(i)='E';
                    end
                end
            end
        end
    end
    end
    i=i+1;
end
set(handles.edit2,'string',Color2(:));
guidata(hObject,handles);
end
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% Hints: get(hObject,'String') returns contents of edit as text
%        str2double(get(hObject,'String')) returns contents of edit as a double


% --- Executes during object creation, after setting all properties.
function edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
[name,path]=uigetfile({'*.jpg'},'载入图像');
if isequal(name,0)||isequal(path,0)
errordlg('没有选中文件','出错');
return;
else
x=imread([path,name]);
axes(handles.axes1);
imshow(x);
handles.img=x;
handles.noise_img=x;
guidata(hObject,handles)
r1=x(300,300,1);
g1=x(300,300,2);
b1=x(300,300,3);
r2=x(300,1500,1);
g2=x(300,1500,2);
b2=x(300,1500,3);
r3=x(300,2700,1);
g3=x(300,2700,2);
b3=x(300,2700,3);
r4=x(1500,300,1);
g4=x(1500,300,2);
b4=x(1500,300,3);
r5=x(1500,1500,1);
g5=x(1500,1500,2);
b5=x(1500,1500,3);
r6=x(1500,2700,1);
g6=x(1500,2700,2);
b6=x(1500,2700,3);
r7=x(2700,300,1);
g7=x(2700,300,2);
b7=x(2700,300,3);
r8=x(2700,1500,1);
g8=x(2700,1500,2);
b8=x(2700,1500,3);
r9=x(2700,2700,1);
g9=x(2700,2700,2);
b9=x(2700,2700,3);
size(x); %计算图片矩阵维度。
RGB=[r1,g1,b1;r2,g2,b2;r3,g3,b3;r4,g4,b4;r5,g5,b5;r6,g6,b6;r7,g7,b7;r8,g8,b8;r9,g9,b9;];
i=1;
while(i<=9)
    if RGB(i,1)>=165&&RGB(i,1)<=175&&RGB(i,2)>=35&&RGB(i,3)<=45&&RGB(i,3)>=35&&RGB(i,3)<=45
    Color3(i)='F';
else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=115&&RGB(i,2)<=125&&RGB(i,3)>=50&&RGB(i,3)<=60
    Color3(i)='R';
  
    else if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=85&&RGB(i,2)<=95&&RGB(i,3)>=35&&RGB(i,3)<=45
     Color3(i)='B';
    
        else  if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=185&&RGB(i,2)<=205&&RGB(i,3)>=55&&RGB(i,3)<=65
     Color3(i)='U';
    
            else if RGB(i,1)>=0&&RGB(i,1)<=10&&RGB(i,2)>=0&&RGB(i,2)<=10&&RGB(i,3)>=0&&RGB(i,3)<=10
    Color3(i)='D';
    
                else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=15&&RGB(i,2)<=25&&RGB(i,3)>=60&&RGB(i,3)<=70
    Color3(i)='L';
    
                    else 
       Color3(i)='E';
                    end
                end
            end
        end
    end
    end
    i=i+1;
end
set(handles.edit4,'string',Color3(:));
guidata(hObject,handles);
end
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
[name,path]=uigetfile({'*.jpg'},'载入图像');
if isequal(name,0)||isequal(path,0)
errordlg('没有选中文件','出错');
return;
else
x=imread([path,name]);
axes(handles.axes1);
imshow(x);
handles.img=x;
handles.noise_img=x;
guidata(hObject,handles)
r1=x(300,300,1);
g1=x(300,300,2);
b1=x(300,300,3);
r2=x(300,1500,1);
g2=x(300,1500,2);
b2=x(300,1500,3);
r3=x(300,2700,1);
g3=x(300,2700,2);
b3=x(300,2700,3);
r4=x(1500,300,1);
g4=x(1500,300,2);
b4=x(1500,300,3);
r5=x(1500,1500,1);
g5=x(1500,1500,2);
b5=x(1500,1500,3);
r6=x(1500,2700,1);
g6=x(1500,2700,2);
b6=x(1500,2700,3);
r7=x(2700,300,1);
g7=x(2700,300,2);
b7=x(2700,300,3);
r8=x(2700,1500,1);
g8=x(2700,1500,2);
b8=x(2700,1500,3);
r9=x(2700,2700,1);
g9=x(2700,2700,2);
b9=x(2700,2700,3);
size(x); %计算图片矩阵维度。
RGB=[r1,g1,b1;r2,g2,b2;r3,g3,b3;r4,g4,b4;r5,g5,b5;r6,g6,b6;r7,g7,b7;r8,g8,b8;r9,g9,b9;];
i=1;
while(i<=9)
    if RGB(i,1)>=165&&RGB(i,1)<=175&&RGB(i,2)>=35&&RGB(i,3)<=45&&RGB(i,3)>=35&&RGB(i,3)<=45
    Color4(i)='F';
else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=115&&RGB(i,2)<=125&&RGB(i,3)>=50&&RGB(i,3)<=60
    Color4(i)='R';
  
    else if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=85&&RGB(i,2)<=95&&RGB(i,3)>=35&&RGB(i,3)<=45
     Color4(i)='B';
    
        else  if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=185&&RGB(i,2)<=205&&RGB(i,3)>=55&&RGB(i,3)<=65
     Color4(i)='U';
    
            else if RGB(i,1)>=0&&RGB(i,1)<=10&&RGB(i,2)>=0&&RGB(i,2)<=10&&RGB(i,3)>=0&&RGB(i,3)<=10
    Color4(i)='D';
    
                else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=15&&RGB(i,2)<=25&&RGB(i,3)>=60&&RGB(i,3)<=70
    Color4(i)='L';
    
                    else 
       Color4(i)='E';
                    end
                end
            end
        end
    end
    end
    i=i+1;
end
set(handles.edit5,'string',Color4(:));
guidata(hObject,handles);
end
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
[name,path]=uigetfile({'*.jpg'},'载入图像');
if isequal(name,0)||isequal(path,0)
errordlg('没有选中文件','出错');
return;
else
x=imread([path,name]);
axes(handles.axes1);
imshow(x);
handles.img=x;
handles.noise_img=x;
guidata(hObject,handles)
r1=x(300,300,1);
g1=x(300,300,2);
b1=x(300,300,3);
r2=x(300,1500,1);
g2=x(300,1500,2);
b2=x(300,1500,3);
r3=x(300,2700,1);
g3=x(300,2700,2);
b3=x(300,2700,3);
r4=x(1500,300,1);
g4=x(1500,300,2);
b4=x(1500,300,3);
r5=x(1500,1500,1);
g5=x(1500,1500,2);
b5=x(1500,1500,3);
r6=x(1500,2700,1);
g6=x(1500,2700,2);
b6=x(1500,2700,3);
r7=x(2700,300,1);
g7=x(2700,300,2);
b7=x(2700,300,3);
r8=x(2700,1500,1);
g8=x(2700,1500,2);
b8=x(2700,1500,3);
r9=x(2700,2700,1);
g9=x(2700,2700,2);
b9=x(2700,2700,3);
size(x); %计算图片矩阵维度。
RGB=[r1,g1,b1;r2,g2,b2;r3,g3,b3;r4,g4,b4;r5,g5,b5;r6,g6,b6;r7,g7,b7;r8,g8,b8;r9,g9,b9;];
i=1;
while(i<=9)
    if RGB(i,1)>=165&&RGB(i,1)<=175&&RGB(i,2)>=35&&RGB(i,3)<=45&&RGB(i,3)>=35&&RGB(i,3)<=45
    Color5(i)='F';
else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=115&&RGB(i,2)<=125&&RGB(i,3)>=50&&RGB(i,3)<=60
    Color5(i)='R';
  
    else if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=85&&RGB(i,2)<=95&&RGB(i,3)>=35&&RGB(i,3)<=45
     Color5(i)='B';
    
        else  if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=185&&RGB(i,2)<=205&&RGB(i,3)>=55&&RGB(i,3)<=65
     Color5(i)='U';
    
            else if RGB(i,1)>=0&&RGB(i,1)<=10&&RGB(i,2)>=0&&RGB(i,2)<=10&&RGB(i,3)>=0&&RGB(i,3)<=10
    Color5(i)='D';
    
                else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=15&&RGB(i,2)<=25&&RGB(i,3)>=60&&RGB(i,3)<=70
    Color5(i)='L';
    
                    else 
       Color5(i)='E';
                    end
                end
            end
        end
    end
    end
    i=i+1;
end
set(handles.edit6,'string',Color5(:));
guidata(hObject,handles);
end
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
[name,path]=uigetfile({'*.jpg'},'载入图像');
if isequal(name,0)||isequal(path,0)
errordlg('没有选中文件','出错');
return;
else
x=imread([path,name]);
axes(handles.axes1);
imshow(x);
handles.img=x;
handles.noise_img=x;
guidata(hObject,handles)
r1=x(300,300,1);
g1=x(300,300,2);
b1=x(300,300,3);
r2=x(300,1500,1);
g2=x(300,1500,2);
b2=x(300,1500,3);
r3=x(300,2700,1);
g3=x(300,2700,2);
b3=x(300,2700,3);
r4=x(1500,300,1);
g4=x(1500,300,2);
b4=x(1500,300,3);
r5=x(1500,1500,1);
g5=x(1500,1500,2);
b5=x(1500,1500,3);
r6=x(1500,2700,1);
g6=x(1500,2700,2);
b6=x(1500,2700,3);
r7=x(2700,300,1);
g7=x(2700,300,2);
b7=x(2700,300,3);
r8=x(2700,1500,1);
g8=x(2700,1500,2);
b8=x(2700,1500,3);
r9=x(2700,2700,1);
g9=x(2700,2700,2);
b9=x(2700,2700,3);
size(x); %计算图片矩阵维度。
RGB=[r1,g1,b1;r2,g2,b2;r3,g3,b3;r4,g4,b4;r5,g5,b5;r6,g6,b6;r7,g7,b7;r8,g8,b8;r9,g9,b9;];
i=1;
while(i<=9)
    if RGB(i,1)>=165&&RGB(i,1)<=175&&RGB(i,2)>=35&&RGB(i,3)<=45&&RGB(i,3)>=35&&RGB(i,3)<=45
    Color6(i)='F';
else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=115&&RGB(i,2)<=125&&RGB(i,3)>=50&&RGB(i,3)<=60
    Color6(i)='R';
  
    else if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=85&&RGB(i,2)<=95&&RGB(i,3)>=35&&RGB(i,3)<=45
     Color6(i)='B';
    
        else  if RGB(i,1)>=215&&RGB(i,1)<=225&&RGB(i,2)>=185&&RGB(i,2)<=205&&RGB(i,3)>=55&&RGB(i,3)<=65
     Color6(i)='U';
    
            else if RGB(i,1)>=0&&RGB(i,1)<=10&&RGB(i,2)>=0&&RGB(i,2)<=10&&RGB(i,3)>=0&&RGB(i,3)<=10
    Color6(i)='D';
    
                else if RGB(i,1)>=15&&RGB(i,1)<=25&&RGB(i,2)>=15&&RGB(i,2)<=25&&RGB(i,3)>=60&&RGB(i,3)<=70
    Color6(i)='L';
    
                    else 
       Color6(i)='E';
                    end
                end
            end
        end
    end
    end
    i=i+1;
end
set(handles.edit7,'string',Color6(:));
guidata(hObject,handles);
end
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton4

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
A=get(handles.edit,'string');
B=get(handles.edit2,'string');
C=get(handles.edit4,'string');
D=get(handles.edit5,'string');
E=get(handles.edit6,'string');
F=get(handles.edit7,'string');
At=reshape(A,1,9)
Bt=reshape(B,1,9)
Ct=reshape(C,1,9)
Dt=reshape(D,1,9)
Et=reshape(E,1,9)
Ft=reshape(F,1,9)
Pict=[At,Bt,Ct,Dt,Et,Ft];
%P=reshape(Pict,6,9)
disp(Pict)
set(handles.edit3,'string',Pict(:));

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




%%%%%%%%%%%%%%%%%%%%%%%%%%%还原算法接口%%%%%%%%%%%%%%%%%%%%%%

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)

% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
