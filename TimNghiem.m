classdef TimNghiem < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        Nghiem                          matlab.ui.container.Tab
        Nhpkhongphnlynghim1Label        matlab.ui.control.Label
        KhoangPhanLyNghiem              matlab.ui.control.NumericEditField
        NhpsaischophpEditFieldLabel     matlab.ui.control.Label
        SaiSoChoPhep                    matlab.ui.control.NumericEditField
        SlnlpEditFieldLabel             matlab.ui.control.Label
        KtqunghimEditFieldLabel         matlab.ui.control.Label
        KetQuaNghiem                    matlab.ui.control.NumericEditField
        NhpphngtrnhEditFieldLabel       matlab.ui.control.Label
        NhapPhuongTrinh                 matlab.ui.control.EditField
        SoLanLap                        matlab.ui.control.NumericEditField
        NhpdliuxEditFieldLabel          matlab.ui.control.Label
        Nhpkhongphnlynghim2Label        matlab.ui.control.Label
        KhoangPhanLyNghiem_2            matlab.ui.control.NumericEditField
        ChnphngphptmChiailptuyntnhDropDownLabel  matlab.ui.control.Label
        PhuongPhapTimNghiem             matlab.ui.control.DropDown
        UIAxes                          matlab.ui.control.UIAxes
        button                          matlab.ui.control.Button
        NhapDuLieuX                     matlab.ui.control.NumericEditField
        NhpdliuyEditFieldLabel          matlab.ui.control.Label
        NhapDuLieuY                     matlab.ui.control.NumericEditField
        ChnphngthcnisuyEditFieldLabel   matlab.ui.control.Label
        ChonPhuongThucNoiSuy            matlab.ui.control.EditField
        KtquathcnisuyEditFieldLabel     matlab.ui.control.Label
        KetQuaDaThucNoiSuy              matlab.ui.control.NumericEditField
        NhpgitrcnnisuyEditFieldLabel    matlab.ui.control.Label
        NhapGiaTriCanNoiSuy             matlab.ui.control.NumericEditField
        KtqunisuyEditFieldLabel         matlab.ui.control.Label
        KetQuaNoiSuy                    matlab.ui.control.NumericEditField
        UIAxes2                         matlab.ui.control.UIAxes
        NhpdliuxEditField_2Label        matlab.ui.control.Label
        NhapDuLieuX_HoiQuy              matlab.ui.control.NumericEditField
        NhpdliuyEditField_2Label        matlab.ui.control.Label
        NhapDuLieuY_HoiQuy              matlab.ui.control.NumericEditField
        ChnphuongthchiquyEditFieldLabel  matlab.ui.control.Label
        ChonPhuongThucHoiQuy            matlab.ui.control.EditField
        KtquphngtrnhhiquyEditFieldLabel  matlab.ui.control.Label
        KetQuaPhuongTringHoiQuy         matlab.ui.control.NumericEditField
        NhpgitrcndonEditFieldLabel      matlab.ui.control.Label
        GiaTriCanDuDoan                 matlab.ui.control.NumericEditField
        KtqudonEditFieldLabel           matlab.ui.control.Label
        KetQuaDuDoan                    matlab.ui.control.NumericEditField
        UIAxes3                         matlab.ui.control.UIAxes
        ohmTab                          matlab.ui.container.Tab
        NhpdliuxEditField_3Label        matlab.ui.control.Label
        NhapDuLieuX_DaoHam              matlab.ui.control.NumericEditField
        NhpdliuyEditField_3Label        matlab.ui.control.Label
        NhapDuLieuY_DaoHam              matlab.ui.control.NumericEditField
        NhphmsEditFieldLabel            matlab.ui.control.Label
        NhapHamSo                       matlab.ui.control.NumericEditField
        NhpbchEditFieldLabel            matlab.ui.control.Label
        NhapBuocH                       matlab.ui.control.NumericEditField
        NhpgitrsaisOhvOh2EditFieldLabel  matlab.ui.control.Label
        NhapGiaTriSaiSo                 matlab.ui.control.NumericEditField
        ChnphngphpohmEditFieldLabel     matlab.ui.control.Label
        ChonPhuongThucDaoHam            matlab.ui.control.EditField
        NhpgitrcntnhohmEditFieldLabel   matlab.ui.control.Label
        GiaTriCanDaoHam                 matlab.ui.control.EditField
        KtquEditFieldLabel              matlab.ui.control.Label
        KetQua                          matlab.ui.control.NumericEditField
        TichPhan                        matlab.ui.container.Tab
        NhpdliuxEditField_4Label        matlab.ui.control.Label
        NhapDuLieuX_TichPhan            matlab.ui.control.NumericEditField
        HocLabel_2                      matlab.ui.control.Label
        NhpdliuyEditField_4Label        matlab.ui.control.Label
        NhapDuLieuY_TichPhan            matlab.ui.control.NumericEditField
        NhphmsEditField_2Label          matlab.ui.control.Label
        NhapHamSoTichPhan               matlab.ui.control.NumericEditField
        Tab                             matlab.ui.container.Tab
        GiithiuthnhvinnhimvgiithiunhmLabel  matlab.ui.control.Label
        ChnphngphptchphnEditFieldLabel  matlab.ui.control.Label
        PhuongPhapTichPhan              matlab.ui.control.EditField
        NhpcntnhtchphnEditFieldLabel    matlab.ui.control.Label
        CanTichPhan                     matlab.ui.control.NumericEditField
        NhpNEditFieldLabel              matlab.ui.control.Label
        NhapN                           matlab.ui.control.NumericEditField
        KtquEditFieldLabel_2            matlab.ui.control.Label
        KetQuaTichPhan                  matlab.ui.control.NumericEditField
        HocLabel                        matlab.ui.control.Label
        NoiSuy                          matlab.ui.container.Tab
        HiquyTab                        matlab.ui.container.Tab
    end

    
    methods (Access = private)
        
        
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Callback function: KetQuaNghiem, KhoangPhanLyNghiem, 
        % KhoangPhanLyNghiem_2, Nghiem, NhapPhuongTrinh, 
        % PhuongPhapTimNghiem, SaiSoChoPhep, SoLanLap, button
        function buttonPushed(app, event)
        
        
            
            saiso = app.SaiSoChoPhep.Value;
            fx = app.NhapPhuongTrinh.Value;
            pp = app.PhuongPhapTimNghiem.Value;
            a = app.KhoangPhanLyNghiem.Value;
            b = app.KhoangPhanLyNghiem_2.Value;

            % phuong phap chia doi cap nhat lai khoang phan ly nghiem
            
             if strcmp(pp,'chiadoi')
             max = 500;
             fx = str2func(['@(x)',fx]);
             n = 0;
            for i = 1:1:max
                x = (a+b)/2;
               

                if (fx(a) * fx(x) >0)
                    a = x;
                else
                    b = x;
                end
                if ((b-a) < saiso)
                    n = i;
                    break;
                end
            end
            app.KetQuaNghiem.Value = x; % ket qua nghiem
            app.SoLanLap.Value = n; % So lan lap
            temp = linspace(a,b,1000); % tao khoang phan ly nghiem
            plot(app.UIAxes,temp, fx(temp)); % ve voi x la khoang phan ly nghiem, y la phuong trinh tai do 
            end
            
            
       
             
            % phuong phap lap don
            
            if strcmp(pp,'lapdon')  
                
            fx = str2func(['@(x)',fx]); % tÿo hàm ÿn danh cÿa fx
            syms x
            fn = 0.25 + sin(x); % tÿo hàm gp(x)
            fp = matlabFunction(fn); % tÿo hàm ÿn danh cÿa gp(x)
            max = 500;
            n = 0; % so lan lap
            x = (a+b)/2;
            for i = 1 : 1: max
                y = fp(x);
                z = y -x;
                if(abs(z) > saiso)
                    x = y;
                    n = n + 1;
                else
                    break;
                end
            end
            
            app.KetQuaNghiem.Value = y;
            app.SoLanLap.Value = n;
            temp = linspace(a,b,1000);
            plot(app.UIAxes,temp, fx(temp));
            
            end
            
            
            
            % phuong phap NewTon
             if strcmp(pp,'tieptuyen')
  
             f = str2sym(fx); % chuyen tÿ string vÿ default function
            f_n = diff(f); % dao ham cua default function
            f1 = matlabFunction(f_n); % tao ham mao danh cua ket qua dao ham
            fx = str2func(['@(x)',fx]); % tao ham an danh gan vao fx
 
            max = 500;
            x = (a+b)/2;
            n = 0; % so lan lap
            for i = 1:1:max
                y =    x - (fx(x) / f1(x));
                
                if(abs(y-x) < saiso)
                    break;
                else
                    x = y;
                    n = n + 1;
                end
                
            end
            app.KetQuaNghiem.Value =y;
            app.SoLanLap.Value =  n;
            temp = linspace(a,b,1000);
            plot(app.UIAxes,temp, fx(temp), 'r');
            %%%%%%
             end
             
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 10 640 471];

            % Create Nghiem
            app.Nghiem = uitab(app.TabGroup);
            app.Nghiem.SizeChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.Nghiem.Title = 'Nghiÿm';

            % Create Nhpkhongphnlynghim1Label
            app.Nhpkhongphnlynghim1Label = uilabel(app.Nghiem);
            app.Nhpkhongphnlynghim1Label.HorizontalAlignment = 'right';
            app.Nhpkhongphnlynghim1Label.Position = [1 333 171 22];
            app.Nhpkhongphnlynghim1Label.Text = 'Nhÿp khoÿng phân ly nghiÿm 1';

            % Create KhoangPhanLyNghiem
            app.KhoangPhanLyNghiem = uieditfield(app.Nghiem, 'numeric');
            app.KhoangPhanLyNghiem.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.KhoangPhanLyNghiem.Position = [187 334 100 22];
            app.KhoangPhanLyNghiem.Value = -1;

            % Create NhpsaischophpEditFieldLabel
            app.NhpsaischophpEditFieldLabel = uilabel(app.Nghiem);
            app.NhpsaischophpEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpsaischophpEditFieldLabel.Position = [21 224 122 22];
            app.NhpsaischophpEditFieldLabel.Text = 'Nhÿp sai sÿ cho phép';

            % Create SaiSoChoPhep
            app.SaiSoChoPhep = uieditfield(app.Nghiem, 'numeric');
            app.SaiSoChoPhep.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.SaiSoChoPhep.Position = [158 224 100 22];
            app.SaiSoChoPhep.Value = 0.005;

            % Create SlnlpEditFieldLabel
            app.SlnlpEditFieldLabel = uilabel(app.Nghiem);
            app.SlnlpEditFieldLabel.HorizontalAlignment = 'right';
            app.SlnlpEditFieldLabel.Position = [381 56 59 22];
            app.SlnlpEditFieldLabel.Text = 'Sÿ lÿn lÿp';

            % Create SoLanLap
            app.SoLanLap = uieditfield(app.Nghiem, 'numeric');
            app.SoLanLap.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.SoLanLap.Position = [455 56 100 22];

            % Create NhpphngtrnhEditFieldLabel
            app.NhpphngtrnhEditFieldLabel = uilabel(app.Nghiem);
            app.NhpphngtrnhEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpphngtrnhEditFieldLabel.Position = [21 376 107 22];
            app.NhpphngtrnhEditFieldLabel.Text = 'Nhÿp phÿÿng trình';

            % Create NhapPhuongTrinh
            app.NhapPhuongTrinh = uieditfield(app.Nghiem, 'text');
            app.NhapPhuongTrinh.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.NhapPhuongTrinh.Position = [143 376 100 22];
            app.NhapPhuongTrinh.Value = 'x - sin(x) - 0.25';

            % Create KtqunghimEditFieldLabel
            app.KtqunghimEditFieldLabel = uilabel(app.Nghiem);
            app.KtqunghimEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqunghimEditFieldLabel.Position = [50 56 90 22];
            app.KtqunghimEditFieldLabel.Text = 'Kÿt quÿ nghiÿm';

            % Create KetQuaNghiem
            app.KetQuaNghiem = uieditfield(app.Nghiem, 'numeric');
            app.KetQuaNghiem.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.KetQuaNghiem.Position = [155 56 100 22];

            % Create Nhpkhongphnlynghim2Label
            app.Nhpkhongphnlynghim2Label = uilabel(app.Nghiem);
            app.Nhpkhongphnlynghim2Label.HorizontalAlignment = 'right';
            app.Nhpkhongphnlynghim2Label.Position = [11 273 171 22];
            app.Nhpkhongphnlynghim2Label.Text = 'Nhÿp khoÿng phân ly nghiÿm 2';

            % Create KhoangPhanLyNghiem_2
            app.KhoangPhanLyNghiem_2 = uieditfield(app.Nghiem, 'numeric');
            app.KhoangPhanLyNghiem_2.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.KhoangPhanLyNghiem_2.Position = [197 274 100 22];
            app.KhoangPhanLyNghiem_2.Value = 2;

            % Create ChnphngphptmChiailptuyntnhDropDownLabel
            app.ChnphngphptmChiailptuyntnhDropDownLabel = uilabel(app.Nghiem);
            app.ChnphngphptmChiailptuyntnhDropDownLabel.HorizontalAlignment = 'right';
            app.ChnphngphptmChiailptuyntnhDropDownLabel.Position = [15 148 270 22];
            app.ChnphngphptmChiailptuyntnhDropDownLabel.Text = 'Chÿn phÿÿng pháp tìm (Chia ÿôi, lÿp, tuyÿn tính)';

            % Create PhuongPhapTimNghiem
            app.PhuongPhapTimNghiem = uidropdown(app.Nghiem);
            app.PhuongPhapTimNghiem.Items = {'chiadoi', 'lapdon', 'tieptuyen'};
            app.PhuongPhapTimNghiem.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.PhuongPhapTimNghiem.Position = [300 148 100 22];
            app.PhuongPhapTimNghiem.Value = 'chiadoi';

            % Create button
            app.button = uibutton(app.Nghiem, 'push');
            app.button.ButtonPushedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.button.Position = [270 96 100 22];
            app.button.Text = 'Tìm nghiÿm';

            % Create UIAxes
            app.UIAxes = uiaxes(app.Nghiem);
            title(app.UIAxes, 'ÿÿ thÿ hàm sÿ')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.Position = [296 214 300 185];

            % Create NoiSuy
            app.NoiSuy = uitab(app.TabGroup);
            app.NoiSuy.Title = 'Nÿi suy';

            % Create NhpdliuxEditFieldLabel
            app.NhpdliuxEditFieldLabel = uilabel(app.NoiSuy);
            app.NhpdliuxEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel.Position = [64 359 83 22];
            app.NhpdliuxEditFieldLabel.Text = 'Nhÿp dÿ liÿu x';

            % Create NhapDuLieuX
            app.NhapDuLieuX = uieditfield(app.NoiSuy, 'numeric');
            app.NhapDuLieuX.Position = [162 359 100 22];

            % Create NhpdliuyEditFieldLabel
            app.NhpdliuyEditFieldLabel = uilabel(app.NoiSuy);
            app.NhpdliuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel.Position = [64 304 83 22];
            app.NhpdliuyEditFieldLabel.Text = 'Nhÿp dÿ liÿu y';

            % Create NhapDuLieuY
            app.NhapDuLieuY = uieditfield(app.NoiSuy, 'numeric');
            app.NhapDuLieuY.Position = [162 304 100 22];

            % Create ChnphngthcnisuyEditFieldLabel
            app.ChnphngthcnisuyEditFieldLabel = uilabel(app.NoiSuy);
            app.ChnphngthcnisuyEditFieldLabel.HorizontalAlignment = 'right';
            app.ChnphngthcnisuyEditFieldLabel.Position = [47 244 149 22];
            app.ChnphngthcnisuyEditFieldLabel.Text = 'Chÿn phÿÿng thÿc nÿi suy';

            % Create ChonPhuongThucNoiSuy
            app.ChonPhuongThucNoiSuy = uieditfield(app.NoiSuy, 'text');
            app.ChonPhuongThucNoiSuy.Position = [211 244 100 22];

            % Create KtquathcnisuyEditFieldLabel
            app.KtquathcnisuyEditFieldLabel = uilabel(app.NoiSuy);
            app.KtquathcnisuyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquathcnisuyEditFieldLabel.Position = [39 186 132 22];
            app.KtquathcnisuyEditFieldLabel.Text = 'Kÿt quÿ ÿa thÿc nÿi suy';

            % Create KetQuaDaThucNoiSuy
            app.KetQuaDaThucNoiSuy = uieditfield(app.NoiSuy, 'numeric');
            app.KetQuaDaThucNoiSuy.Position = [186 186 100 22];

            % Create NhpgitrcnnisuyEditFieldLabel
            app.NhpgitrcnnisuyEditFieldLabel = uilabel(app.NoiSuy);
            app.NhpgitrcnnisuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcnnisuyEditFieldLabel.Position = [40 130 131 22];
            app.NhpgitrcnnisuyEditFieldLabel.Text = 'Nhÿp giá trÿ cÿn nÿi suy';

            % Create NhapGiaTriCanNoiSuy
            app.NhapGiaTriCanNoiSuy = uieditfield(app.NoiSuy, 'numeric');
            app.NhapGiaTriCanNoiSuy.Position = [186 130 100 22];

            % Create KtqunisuyEditFieldLabel
            app.KtqunisuyEditFieldLabel = uilabel(app.NoiSuy);
            app.KtqunisuyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqunisuyEditFieldLabel.Position = [385 131 88 22];
            app.KtqunisuyEditFieldLabel.Text = 'Kÿt quÿ nÿi suy';

            % Create KetQuaNoiSuy
            app.KetQuaNoiSuy = uieditfield(app.NoiSuy, 'numeric');
            app.KetQuaNoiSuy.Position = [488 131 100 22];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.NoiSuy);
            title(app.UIAxes2, 'Title')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            app.UIAxes2.Position = [325 224 300 185];

            % Create HiquyTab
            app.HiquyTab = uitab(app.TabGroup);
            app.HiquyTab.Title = 'Hÿi quy';

            % Create NhpdliuxEditField_2Label
            app.NhpdliuxEditField_2Label = uilabel(app.HiquyTab);
            app.NhpdliuxEditField_2Label.HorizontalAlignment = 'right';
            app.NhpdliuxEditField_2Label.Position = [73 365 83 22];
            app.NhpdliuxEditField_2Label.Text = 'Nhÿp dÿ liÿu x';

            % Create NhapDuLieuX_HoiQuy
            app.NhapDuLieuX_HoiQuy = uieditfield(app.HiquyTab, 'numeric');
            app.NhapDuLieuX_HoiQuy.Position = [171 365 100 22];

            % Create NhpdliuyEditField_2Label
            app.NhpdliuyEditField_2Label = uilabel(app.HiquyTab);
            app.NhpdliuyEditField_2Label.HorizontalAlignment = 'right';
            app.NhpdliuyEditField_2Label.Position = [74 307 83 22];
            app.NhpdliuyEditField_2Label.Text = 'Nhÿp dÿ liÿu y';

            % Create NhapDuLieuY_HoiQuy
            app.NhapDuLieuY_HoiQuy = uieditfield(app.HiquyTab, 'numeric');
            app.NhapDuLieuY_HoiQuy.Position = [172 307 100 22];

            % Create ChnphuongthchiquyEditFieldLabel
            app.ChnphuongthchiquyEditFieldLabel = uilabel(app.HiquyTab);
            app.ChnphuongthchiquyEditFieldLabel.HorizontalAlignment = 'right';
            app.ChnphuongthchiquyEditFieldLabel.Position = [42 187 147 22];
            app.ChnphuongthchiquyEditFieldLabel.Text = 'Chÿn phuong thÿc hÿi quy';

            % Create ChonPhuongThucHoiQuy
            app.ChonPhuongThucHoiQuy = uieditfield(app.HiquyTab, 'text');
            app.ChonPhuongThucHoiQuy.Position = [204 187 100 22];

            % Create KtquphngtrnhhiquyEditFieldLabel
            app.KtquphngtrnhhiquyEditFieldLabel = uilabel(app.HiquyTab);
            app.KtquphngtrnhhiquyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquphngtrnhhiquyEditFieldLabel.Position = [33 149 162 22];
            app.KtquphngtrnhhiquyEditFieldLabel.Text = 'Kÿt quÿ phÿÿng trình hÿi quy';

            % Create KetQuaPhuongTringHoiQuy
            app.KetQuaPhuongTringHoiQuy = uieditfield(app.HiquyTab, 'numeric');
            app.KetQuaPhuongTringHoiQuy.Position = [210 149 100 22];

            % Create NhpgitrcndonEditFieldLabel
            app.NhpgitrcndonEditFieldLabel = uilabel(app.HiquyTab);
            app.NhpgitrcndonEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcndonEditFieldLabel.Position = [42 94 138 22];
            app.NhpgitrcndonEditFieldLabel.Text = 'Nhÿp giá trÿ cÿn dÿ ÿoán';

            % Create GiaTriCanDuDoan
            app.GiaTriCanDuDoan = uieditfield(app.HiquyTab, 'numeric');
            app.GiaTriCanDuDoan.Position = [195 94 100 22];

            % Create KtqudonEditFieldLabel
            app.KtqudonEditFieldLabel = uilabel(app.HiquyTab);
            app.KtqudonEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqudonEditFieldLabel.Position = [383 93 95 22];
            app.KtqudonEditFieldLabel.Text = 'Kÿt quÿ dÿ ÿoán';

            % Create KetQuaDuDoan
            app.KetQuaDuDoan = uieditfield(app.HiquyTab, 'numeric');
            app.KetQuaDuDoan.Position = [493 93 100 22];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.HiquyTab);
            title(app.UIAxes3, 'Title')
            xlabel(app.UIAxes3, 'X')
            ylabel(app.UIAxes3, 'Y')
            app.UIAxes3.Position = [309 226 300 185];

            % Create ohmTab
            app.ohmTab = uitab(app.TabGroup);
            app.ohmTab.Title = 'ÿÿo hàm';

            % Create NhpdliuxEditField_3Label
            app.NhpdliuxEditField_3Label = uilabel(app.ohmTab);
            app.NhpdliuxEditField_3Label.HorizontalAlignment = 'right';
            app.NhpdliuxEditField_3Label.Position = [34 345 83 22];
            app.NhpdliuxEditField_3Label.Text = 'Nhÿp dÿ liÿu x';

            % Create NhapDuLieuX_DaoHam
            app.NhapDuLieuX_DaoHam = uieditfield(app.ohmTab, 'numeric');
            app.NhapDuLieuX_DaoHam.Position = [132 345 100 22];

            % Create NhpdliuyEditField_3Label
            app.NhpdliuyEditField_3Label = uilabel(app.ohmTab);
            app.NhpdliuyEditField_3Label.HorizontalAlignment = 'right';
            app.NhpdliuyEditField_3Label.Position = [34 311 83 22];
            app.NhpdliuyEditField_3Label.Text = 'Nhÿp dÿ liÿu y';

            % Create NhapDuLieuY_DaoHam
            app.NhapDuLieuY_DaoHam = uieditfield(app.ohmTab, 'numeric');
            app.NhapDuLieuY_DaoHam.Position = [132 311 100 22];

            % Create NhphmsEditFieldLabel
            app.NhphmsEditFieldLabel = uilabel(app.ohmTab);
            app.NhphmsEditFieldLabel.HorizontalAlignment = 'right';
            app.NhphmsEditFieldLabel.Position = [33 242 77 22];
            app.NhphmsEditFieldLabel.Text = 'Nhÿp hàm sÿ';

            % Create NhapHamSo
            app.NhapHamSo = uieditfield(app.ohmTab, 'numeric');
            app.NhapHamSo.Position = [125 242 100 22];

            % Create NhpbchEditFieldLabel
            app.NhpbchEditFieldLabel = uilabel(app.ohmTab);
            app.NhpbchEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpbchEditFieldLabel.Position = [34 200 76 22];
            app.NhpbchEditFieldLabel.Text = 'Nhÿp bÿÿc h';

            % Create NhapBuocH
            app.NhapBuocH = uieditfield(app.ohmTab, 'numeric');
            app.NhapBuocH.Position = [125 200 100 22];

            % Create NhpgitrsaisOhvOh2EditFieldLabel
            app.NhpgitrsaisOhvOh2EditFieldLabel = uilabel(app.ohmTab);
            app.NhpgitrsaisOhvOh2EditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrsaisOhvOh2EditFieldLabel.Position = [16 150 187 22];
            app.NhpgitrsaisOhvOh2EditFieldLabel.Text = 'Nhÿp giá trÿ sai sÿ  O(h) và O(h^2)';

            % Create NhapGiaTriSaiSo
            app.NhapGiaTriSaiSo = uieditfield(app.ohmTab, 'numeric');
            app.NhapGiaTriSaiSo.Position = [218 150 100 22];

            % Create ChnphngphpohmEditFieldLabel
            app.ChnphngphpohmEditFieldLabel = uilabel(app.ohmTab);
            app.ChnphngphpohmEditFieldLabel.HorizontalAlignment = 'right';
            app.ChnphngphpohmEditFieldLabel.Position = [273 346 163 22];
            app.ChnphngphpohmEditFieldLabel.Text = 'Chÿn phÿÿng pháp ÿÿo hàm ';

            % Create ChonPhuongThucDaoHam
            app.ChonPhuongThucDaoHam = uieditfield(app.ohmTab, 'text');
            app.ChonPhuongThucDaoHam.Position = [451 346 100 22];

            % Create NhpgitrcntnhohmEditFieldLabel
            app.NhpgitrcntnhohmEditFieldLabel = uilabel(app.ohmTab);
            app.NhpgitrcntnhohmEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcntnhohmEditFieldLabel.Position = [273 291 163 22];
            app.NhpgitrcntnhohmEditFieldLabel.Text = 'Nhÿp giá trÿ cÿn tính ÿÿo hàm';

            % Create GiaTriCanDaoHam
            app.GiaTriCanDaoHam = uieditfield(app.ohmTab, 'text');
            app.GiaTriCanDaoHam.Position = [451 291 100 22];

            % Create KtquEditFieldLabel
            app.KtquEditFieldLabel = uilabel(app.ohmTab);
            app.KtquEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquEditFieldLabel.Position = [364 221 47 22];
            app.KtquEditFieldLabel.Text = 'Kÿt quÿ';

            % Create KetQua
            app.KetQua = uieditfield(app.ohmTab, 'numeric');
            app.KetQua.Position = [426 221 100 22];

            % Create HocLabel_2
            app.HocLabel_2 = uilabel(app.ohmTab);
            app.HocLabel_2.Position = [109 278 34 22];
            app.HocLabel_2.Text = 'Hoÿc';

            % Create TichPhan
            app.TichPhan = uitab(app.TabGroup);
            app.TichPhan.Title = 'Tích phân';

            % Create NhpdliuxEditField_4Label
            app.NhpdliuxEditField_4Label = uilabel(app.TichPhan);
            app.NhpdliuxEditField_4Label.HorizontalAlignment = 'right';
            app.NhpdliuxEditField_4Label.Position = [34 343 83 22];
            app.NhpdliuxEditField_4Label.Text = 'Nhÿp dÿ liÿu x';

            % Create NhapDuLieuX_TichPhan
            app.NhapDuLieuX_TichPhan = uieditfield(app.TichPhan, 'numeric');
            app.NhapDuLieuX_TichPhan.Position = [132 343 100 22];

            % Create NhpdliuyEditField_4Label
            app.NhpdliuyEditField_4Label = uilabel(app.TichPhan);
            app.NhpdliuyEditField_4Label.HorizontalAlignment = 'right';
            app.NhpdliuyEditField_4Label.Position = [34 287 83 22];
            app.NhpdliuyEditField_4Label.Text = 'Nhÿp dÿ liÿu y';

            % Create NhapDuLieuY_TichPhan
            app.NhapDuLieuY_TichPhan = uieditfield(app.TichPhan, 'numeric');
            app.NhapDuLieuY_TichPhan.Position = [132 287 100 22];

            % Create NhphmsEditField_2Label
            app.NhphmsEditField_2Label = uilabel(app.TichPhan);
            app.NhphmsEditField_2Label.HorizontalAlignment = 'right';
            app.NhphmsEditField_2Label.Position = [26 183 77 22];
            app.NhphmsEditField_2Label.Text = 'Nhÿp hàm sÿ';

            % Create NhapHamSoTichPhan
            app.NhapHamSoTichPhan = uieditfield(app.TichPhan, 'numeric');
            app.NhapHamSoTichPhan.Position = [118 183 100 22];

            % Create ChnphngphptchphnEditFieldLabel
            app.ChnphngphptchphnEditFieldLabel = uilabel(app.TichPhan);
            app.ChnphngphptchphnEditFieldLabel.HorizontalAlignment = 'right';
            app.ChnphngphptchphnEditFieldLabel.Position = [282 343 163 22];
            app.ChnphngphptchphnEditFieldLabel.Text = 'Chÿn phÿÿng pháp tích phân';

            % Create PhuongPhapTichPhan
            app.PhuongPhapTichPhan = uieditfield(app.TichPhan, 'text');
            app.PhuongPhapTichPhan.Position = [460 343 100 22];

            % Create NhpcntnhtchphnEditFieldLabel
            app.NhpcntnhtchphnEditFieldLabel = uilabel(app.TichPhan);
            app.NhpcntnhtchphnEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpcntnhtchphnEditFieldLabel.Position = [282 266 150 22];
            app.NhpcntnhtchphnEditFieldLabel.Text = 'Nhÿp cÿn ÿÿ tính tích phân';

            % Create CanTichPhan
            app.CanTichPhan = uieditfield(app.TichPhan, 'numeric');
            app.CanTichPhan.Position = [447 266 100 22];

            % Create NhpNEditFieldLabel
            app.NhpNEditFieldLabel = uilabel(app.TichPhan);
            app.NhpNEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpNEditFieldLabel.Position = [345 183 46 22];
            app.NhpNEditFieldLabel.Text = 'Nhÿp N';

            % Create NhapN
            app.NhapN = uieditfield(app.TichPhan, 'numeric');
            app.NhapN.Position = [406 183 100 22];

            % Create KtquEditFieldLabel_2
            app.KtquEditFieldLabel_2 = uilabel(app.TichPhan);
            app.KtquEditFieldLabel_2.HorizontalAlignment = 'right';
            app.KtquEditFieldLabel_2.Position = [239 91 47 22];
            app.KtquEditFieldLabel_2.Text = 'Kÿt quÿ';

            % Create KetQuaTichPhan
            app.KetQuaTichPhan = uieditfield(app.TichPhan, 'numeric');
            app.KetQuaTichPhan.Position = [301 91 100 22];

            % Create HocLabel
            app.HocLabel = uilabel(app.TichPhan);
            app.HocLabel.Position = [105 235 34 22];
            app.HocLabel.Text = 'Hoÿc';

            % Create Tab
            app.Tab = uitab(app.TabGroup);
            app.Tab.Title = 'Tab';

            % Create GiithiuthnhvinnhimvgiithiunhmLabel
            app.GiithiuthnhvinnhimvgiithiunhmLabel = uilabel(app.Tab);
            app.GiithiuthnhvinnhimvgiithiunhmLabel.Position = [178 230 283 52];
            app.GiithiuthnhvinnhimvgiithiunhmLabel.Text = 'Giÿi thiÿu thành viên, nhiÿm vÿ, giÿi thiÿu nhóm ';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = TimNghiem

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end