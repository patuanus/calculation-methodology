classdef DoAn_a < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        TabGroup                       matlab.ui.container.TabGroup
        Nghiem                         matlab.ui.container.Tab
        Nhpkhongphnlynghim1Label       matlab.ui.control.Label
        KhoangPhanLyNghiem             matlab.ui.control.NumericEditField
        NhpsaischophpEditFieldLabel    matlab.ui.control.Label
        SaiSoChoPhep                   matlab.ui.control.NumericEditField
        SlnlpEditFieldLabel            matlab.ui.control.Label
        SoLanLap                       matlab.ui.control.NumericEditField
        NhpphngtrnhEditFieldLabel      matlab.ui.control.Label
        NhapPhuongTrinh                matlab.ui.control.EditField
        KtqunghimEditFieldLabel        matlab.ui.control.Label
        KetQuaNghiem                   matlab.ui.control.NumericEditField
        Nhpkhongphnlynghim2Label       matlab.ui.control.Label
        KhoangPhanLyNghiem_2           matlab.ui.control.NumericEditField
        ChnphngphptmChiailptuyntnhDropDownLabel  matlab.ui.control.Label
        PhuongPhapTimNghiem            matlab.ui.control.DropDown
        button                         matlab.ui.control.Button
        UIAxes                         matlab.ui.control.UIAxes
        NoiSuy                         matlab.ui.container.Tab
        NhpgitrcnnisuyEditFieldLabel   matlab.ui.control.Label
        NhapGiaTriCanNoiSuy            matlab.ui.control.NumericEditField
        KtqunisuyEditFieldLabel        matlab.ui.control.Label
        KetQuaNoiSuy                   matlab.ui.control.NumericEditField
        UIAxes2                        matlab.ui.control.UIAxes
        ChnphngthcnisuyDropDownLabel   matlab.ui.control.Label
        PhuongThucNoiSuy               matlab.ui.control.DropDown
        ButtonNoiSuy                   matlab.ui.control.Button
        NhpdliuxEditFieldLabel_2       matlab.ui.control.Label
        NhapDuLieuX                    matlab.ui.control.EditField
        NhpdliuyEditFieldLabel         matlab.ui.control.Label
        NhapDuLieuY                    matlab.ui.control.EditField
        KtquathcnisuyEditFieldLabel    matlab.ui.control.Label
        KetQuaDaThucNoiSuy             matlab.ui.control.EditField
        HiquyTab                       matlab.ui.container.Tab
        NhpgitrcndonEditFieldLabel     matlab.ui.control.Label
        GiaTriCanDuDoan                matlab.ui.control.NumericEditField
        KtqudonEditFieldLabel          matlab.ui.control.Label
        ChnphngthchiquyDropDownLabel   matlab.ui.control.Label
        PhuongThucHoiQuy               matlab.ui.control.DropDown
        ButtonHoiQuy                   matlab.ui.control.StateButton
        KtquphuongtrnhhiquyEditFieldLabel  matlab.ui.control.Label
        KetQuaPhuongTringHoiQuy        matlab.ui.control.EditField
        NhpdliuYLabel                  matlab.ui.control.Label
        NhapDuLieuY_HoiQuy             matlab.ui.control.EditField
        KetQuaDuDoan                   matlab.ui.control.NumericEditField
        UIAxes3                        matlab.ui.control.UIAxes
        NhpdliuXEditFieldLabel         matlab.ui.control.Label
        NhapDuLieuX_HoiQuy             matlab.ui.control.EditField
        ohmTab                         matlab.ui.container.Tab
        NhpbchEditFieldLabel           matlab.ui.control.Label
        NhapBuocH                      matlab.ui.control.NumericEditField
        NhpgitrsaisOhvOh2EditFieldLabel  matlab.ui.control.Label
        NhapGiaTriSaiSo                matlab.ui.control.NumericEditField
        NhpgitrcntnhohmEditFieldLabel  matlab.ui.control.Label
        GiaTriCanDaoHam                matlab.ui.control.EditField
        KtquEditFieldLabel             matlab.ui.control.Label
        KetQua                         matlab.ui.control.NumericEditField
        HocLabel_2                     matlab.ui.control.Label
        ButtonDaoHam                   matlab.ui.control.StateButton
        ChnphngphpohmDropDownLabel     matlab.ui.control.Label
        ChonPhuongThucDaoHam           matlab.ui.control.DropDown
        NhphmsEditFieldLabel_2         matlab.ui.control.Label
        NhapHamSo                      matlab.ui.control.EditField
        NhpdliuyLabel                  matlab.ui.control.Label
        NhapDuLieuY_DaoHam             matlab.ui.control.EditField
        NhpdliuxEditFieldLabel_3       matlab.ui.control.Label
        NhapDuLieuX_DaoHam             matlab.ui.control.EditField
        TichPhan                       matlab.ui.container.Tab
        NhpNEditFieldLabel             matlab.ui.control.Label
        NhapN                          matlab.ui.control.NumericEditField
        KtquEditFieldLabel_2           matlab.ui.control.Label
        KetQuaTichPhan                 matlab.ui.control.NumericEditField
        HocLabel                       matlab.ui.control.Label
        NhpcnaEditFieldLabel           matlab.ui.control.Label
        NhapcanA                       matlab.ui.control.NumericEditField
        NhpcnbEditFieldLabel           matlab.ui.control.Label
        NhapCanB                       matlab.ui.control.NumericEditField
        ButtonTichPhan                 matlab.ui.control.StateButton
        NhphmsEditFieldLabel_3         matlab.ui.control.Label
        NhapHamSoTichPhan              matlab.ui.control.EditField
        NhpdliuyEditFieldLabel_2       matlab.ui.control.Label
        NhapDuLieuY_TichPhan           matlab.ui.control.EditField
        ChnphngphptchphnDropDownLabel  matlab.ui.control.Label
        PhuongPhapTichPhan             matlab.ui.control.DropDown
        NhpdliuxEditFieldLabel_4       matlab.ui.control.Label
        NhapDuLieuX_TichPhan           matlab.ui.control.EditField
        ChncchnhpDropDownLabel         matlab.ui.control.Label
        CachNhap                       matlab.ui.control.DropDown
        Tab                            matlab.ui.container.Tab
        GiithiuthnhvinnhimvgiithiunhmLabel  matlab.ui.control.Label
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
                
            fx = str2func(['@(x)',fx]); % t�o h�m �n danh c�a fx
            syms x
            fn = 0.25 + sin(x); % t�o h�m gp(x)
            fp = matlabFunction(fn); % t�o h�m �n danh c�a gp(x)
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
  
             f = str2sym(fx); % chuyen t� string v� default function
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

        % Callback function: ButtonNoiSuy, KetQuaNoiSuy, 
        % NhapGiaTriCanNoiSuy, PhuongThucNoiSuy
        function ButtonNoiSuyPushed(app, event)
           % exsdpression = app.KetQuaDaThucNoiSuy.Value;
           % result = app.KetQuaNoiSuy.Value;
            X = str2num(app.NhapDuLieuX.Value);
            Y = str2num(app.NhapDuLieuY.Value);
            X_a = app.NhapGiaTriCanNoiSuy.Value;
            pp = app.PhuongThucNoiSuy.Value;
            
            % Noi suy Lagrange
            if strcmp(pp,'Lagrange')
            syms x;
            sum = 0;
            n = length(X);
            for i=1:n
                temp = Y(i); %dau tien gan y
                for j =1:1: n
                    if i ~= j
                        temp = temp*(x -X(j))/(X(i) - X(j));
                    end
                end
                sum = sum + temp
            end
            
            %app.KetQuaDaThucNoiSuy.Value = sum
           
            c = string(sum); % chuyen dang ham so ve string
            app.KetQuaDaThucNoiSuy.Value = c; % gan bieu thuc voi string 
            f = matlabFunction(sum) % tao ham an danh 
            app.KetQuaNoiSuy.Value = f(X_a); % thay x tai ham an danh 
            
            plot(app.UIAxes2,X,f(X));
            end
            if strcmp(pp,'Newton')
                syms x;
                
                % tinh ty hieu
                n = length(X);
                d = Y;
                temp = zeros(n,n);
                    for i = 1: n
                        for j =1 : i-1
                            d(i) = (d(j) -d(i))/ (X(j) - X(i));
                        end
                    end
                    temp = d;
                %tinh tong
                l = length(temp);
                result =  temp(l);
                for i = l-1:-1:1
                    result = result * (x - X(i))+ temp(i);
                end
                c = string(result);
                app.KetQuaDaThucNoiSuy.Value = c;
                f = matlabFunction(result)
                app.KetQuaNoiSuy.Value = f(X_a); % thay x tai ham an danh 
                plot(app.UIAxes2,X,f(X));
                   
            end
        end

        % Callback function: ButtonHoiQuy, GiaTriCanDuDoan, HiquyTab, 
        % KetQuaDuDoan, KetQuaPhuongTringHoiQuy, 
        % NhapDuLieuX_HoiQuy, NhapDuLieuY_HoiQuy, PhuongThucHoiQuy
        function ButtonHoiQuyValueChanged(app, event)
            value = app.ButtonHoiQuy.Value;
            X = str2num(app.NhapDuLieuX_HoiQuy.Value);
            Y = str2num(app.NhapDuLieuY_HoiQuy.Value); 
            pp = app.PhuongThucHoiQuy.Value;
            predict = app.KetQuaDuDoan.Value;
            % hoi quy tuyen tinh
             if strcmp(pp,'TuyenTinh')
                 n = length(X);
                 sumx = 0;
                 sumy = 0;
                 sumxy = 0;
                 sumx2 = 0;
                 st = 0;
                 sr = 0;
                    for i = 1:n
                        sumx = sumx + X(i);
                        sumy = sumy + Y(i);
                        sumxy = sumxy + X(i) * Y(i);
                        sumx2 = sumx2 + X(i) * X(i);
                    end
                 xm = sumx/n;
                 ym = sumy/n;
                 a1 = (n*sumxy -sumx*sumy)/(n*sumx2-sumx*sumx);
                 a0 = ym - (a1 * xm);

                 syms x
                 f = a1 .*x + a0; % phuong trinh a0 + a1x
                 c = string(f)
                 app.KetQuaPhuongTringHoiQuy.Value = c; % xuat phuong trinh hoi quy
                 fx = matlabFunction(f);
                 app.KetQuaDuDoan.Value = fx(predict); % thay x tai ham an danh 
                 plot(app.UIAxes3,X,fx(X),'-o');
             end
             
             %hoi quy logarith
             if strcmp(pp,'Logarith')
                 
                 n = length(X);
                 for i =1 :n
                     % xac dinh X moi
                     Xa(i) = log10(X(i));
                 end
                 for i = 1:n
                     Ya(i) = log10(Y(i));
                 end
                 
                 sumx = 0;
                 sumy = 0;
                 sumxy = 0;
                 sumx2 = 0;
                 st = 0;
                 sr = 0;
                    for i = 1:n
                        sumx = sumx + Xa(i);
                        sumy = sumy + Ya(i);
                        sumxy = sumxy + Xa(i) * Ya(i);
                        sumx2 = sumx2 + Xa(i) * Xa(i);
                    end
                 xm = sumx/n;
                 ym = sumy/n;
                 a1 = (n*sumxy -sumx*sumy)/(n*sumx2-sumx*sumx);
                 a0 = ym - (a1 * xm);

                 syms x
                 b = a1;
                 a = 10 ^a0;
                 f = a .* (x.^b);
                 c = string(f);
                 app.KetQuaPhuongTringHoiQuy.Value = c; % xuat phuong trinh hoi quy
                 fx = matlabFunction(f); % ham mao danh
                 app.KetQuaDuDoan.Value = fx(predict); % thay x tai ham an danh 
                 plot(app.UIAxes3,X,fx(X),'-o');
             end
             
             % hoi quy logarith
             if strcmp(pp,'HamMu')
   
                 n = length(X);
                 
                 for i =1 :n
                     % xac dinh X moi
                     Xa(i) = log(X(i));
                 end
                 for i = 1:n
                     Ya(i) = log(Y(i));
                 end
                 %su dung hoi quy tuyen tinh y = ax + b
                 sumx = 0;
                 sumy = 0;
                 sumxy = 0;
                 sumx2 = 0;
                 st = 0;
                 sr = 0;
                    for i = 1:n
                        sumx = sumx + Xa(i);
                        sumy = sumy + Ya(i);
                        sumxy = sumxy + Xa(i) * Ya(i);
                        sumx2 = sumx2 + Xa(i) * Xa(i);
                    end
                 xm = sumx/n;
                 ym = sumy/n;
                 a1 = (n*sumxy -sumx*sumy)/(n*sumx2-sumx*sumx);
                 a0 = ym - (a1 * xm);
                 % tu ket qua ax + b = y  thuc hien thay nguoc de xac dinh
                 % hoi quy ham mu
                 syms x
                 b = a0;
                 a = exp(a1);
                 f = a .* exp(x.*b);
                 c = string(f);
                 app.KetQuaPhuongTringHoiQuy.Value = c; % xuat phuong trinh hoi quy
                 fx = matlabFunction(f); % ham mao danh
                 app.KetQuaDuDoan.Value = fx(predict); % thay x tai ham an danh 
                 plot(app.UIAxes3,X,fx(X),'-o'); %plot hoi quy ham mu
                 
             end
        end

        % Value changed function: ButtonTichPhan, KetQuaTichPhan, 
        % NhapCanB, NhapDuLieuX_TichPhan, NhapDuLieuY_TichPhan, 
        % NhapHamSoTichPhan, NhapN, NhapcanA, PhuongPhapTichPhan
        function ButtonTichPhanValueChanged(app, event)
            value = app.ButtonTichPhan.Value;
            X = str2num(app.NhapDuLieuX_TichPhan.Value);
            Y = str2num(app.NhapDuLieuY_TichPhan.Value);
            N = app.NhapN.Value;
            a = app.NhapcanA.Value;
            b = app.NhapCanB.Value;
            pp = app.PhuongPhapTichPhan.Value;
            pp2 = app.CachNhap.Value;
           % y = app.KetQuaTichPhan.Value;         
            fx = app.NhapHamSoTichPhan.Value;
           % hinh thang
           fx = str2func(['@(x)',fx]);
            if strcmp(pp,'HinhThang')
                
                if strcmp(pp2, 'NhapHamSo')
                h = (b-a)/N;
                tong  = 0;
                for i = 1:N-1
                    tong = tong +fx(a+i*h);
                end
                app.KetQuaTichPhan.Value = h/2 * (fx(a) + fx(b) +2*tong);
                end
                
                if strcmp(pp2, 'NhapChuoi')
                    h  = (b-a)/N ;
                    n = length(X);
                    sum = 0;
                    for j=2:n-1                       
                        sum = sum + Y(j);
                    end
                    app.KetQuaTichPhan.Value = h/2 * (Y(1) + 2*sum + Y(n));
                end
            end
           % simpson 1/3
           if strcmp(pp,'Simpson1/3')
               if strcmp (pp2 , "NhapHamSo")
                   h = (b - a)/N;
                   tongchan = 0;
                   tongle = 0;
                   for i =1:2:N-1
                       tongle = tongle + fx(a +i*h);
                   end
                   for i = 2:2:N-2
                       tongchan = tongchan + fx(a+i*h);
                   end
                   app.KetQuaTichPhan.Value = (h/3) * ( fx(a) + fx(b) + 4*tongle + 2*tongchan);
               end
               
              if strcmp (pp2, "NhapChuoi")
                  h = (b-a)/N;
                  n = length(X);
                  tongle = 0;
                  tongchan = 0;
                  for i = 2:2:n-1
                      tongle = tongle + Y(i);                      
                  end
                  for i = 3:2:n-2
                      tongchan = tongchan + Y(i);
                  end                
                  app.KetQuaTichPhan.Value = h/3 *((Y(1) + Y(n)) +4*tongle + 2*tongchan);
              end
           end
           
           % simpson 1/3
             if strcmp(pp,'Simpson3/8')
                 if strcmp (pp2 , "NhapHamSo")
                     h = (b-a)/N;
                     tong = 0;
                     tongboiba = 0;
                     for i = 1:1:N-1
                        if mod(i,3)~=0
                            tong = tong + fx(a+i*h);
                        end
                     end
                     
                     for i = 3:3:N-3             
                         tongboiba = tongboiba + fx(a+i*h);
                     end
                     app.KetQuaTichPhan.Value = (3*h/8)*(fx(a)+fx(b)+3*tong+2*tongboiba);
                 end
                 
                if strcmp (pp2 , "NhapChuoi") 
                    h = (b-a)/N;
                    sum1 = 0;
                    sum2 = 0;
                    n = length(X);
                    for i = 2:n-1
                        if mod(i,3) ~= 0
                            sum1 = sum1 + Y(i);
                        end
                        if mod(i,3) == 0
                            sum2 = sum2 + Y(i);
                        end
                    end      
                    app.KetQuaTichPhan.Value = (3*h/8) * ((Y(1) + Y(n)) + 2 * sum1 + 3*sum2);
                end
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
            app.TabGroup.Position = [1 1 640 480];

            % Create Nghiem
            app.Nghiem = uitab(app.TabGroup);
            app.Nghiem.SizeChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.Nghiem.Title = 'Nghi�m';

            % Create Nhpkhongphnlynghim1Label
            app.Nhpkhongphnlynghim1Label = uilabel(app.Nghiem);
            app.Nhpkhongphnlynghim1Label.HorizontalAlignment = 'right';
            app.Nhpkhongphnlynghim1Label.Position = [1 342 171 22];
            app.Nhpkhongphnlynghim1Label.Text = 'Nh�p kho�ng ph�n ly nghi�m 1';

            % Create KhoangPhanLyNghiem
            app.KhoangPhanLyNghiem = uieditfield(app.Nghiem, 'numeric');
            app.KhoangPhanLyNghiem.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.KhoangPhanLyNghiem.Position = [187 343 100 22];
            app.KhoangPhanLyNghiem.Value = -1;

            % Create NhpsaischophpEditFieldLabel
            app.NhpsaischophpEditFieldLabel = uilabel(app.Nghiem);
            app.NhpsaischophpEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpsaischophpEditFieldLabel.Position = [21 233 122 22];
            app.NhpsaischophpEditFieldLabel.Text = 'Nh�p sai s� cho ph�p';

            % Create SaiSoChoPhep
            app.SaiSoChoPhep = uieditfield(app.Nghiem, 'numeric');
            app.SaiSoChoPhep.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.SaiSoChoPhep.Position = [158 233 100 22];
            app.SaiSoChoPhep.Value = 0.005;

            % Create SlnlpEditFieldLabel
            app.SlnlpEditFieldLabel = uilabel(app.Nghiem);
            app.SlnlpEditFieldLabel.HorizontalAlignment = 'right';
            app.SlnlpEditFieldLabel.Position = [381 65 59 22];
            app.SlnlpEditFieldLabel.Text = 'S� l�n l�p';

            % Create SoLanLap
            app.SoLanLap = uieditfield(app.Nghiem, 'numeric');
            app.SoLanLap.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.SoLanLap.Position = [455 65 100 22];

            % Create NhpphngtrnhEditFieldLabel
            app.NhpphngtrnhEditFieldLabel = uilabel(app.Nghiem);
            app.NhpphngtrnhEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpphngtrnhEditFieldLabel.Position = [21 385 107 22];
            app.NhpphngtrnhEditFieldLabel.Text = 'Nh�p ph��ng tr�nh';

            % Create NhapPhuongTrinh
            app.NhapPhuongTrinh = uieditfield(app.Nghiem, 'text');
            app.NhapPhuongTrinh.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.NhapPhuongTrinh.Position = [143 385 100 22];
            app.NhapPhuongTrinh.Value = 'x - sin(x) - 0.25';

            % Create KtqunghimEditFieldLabel
            app.KtqunghimEditFieldLabel = uilabel(app.Nghiem);
            app.KtqunghimEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqunghimEditFieldLabel.Position = [50 65 90 22];
            app.KtqunghimEditFieldLabel.Text = 'K�t qu� nghi�m';

            % Create KetQuaNghiem
            app.KetQuaNghiem = uieditfield(app.Nghiem, 'numeric');
            app.KetQuaNghiem.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.KetQuaNghiem.Position = [155 65 100 22];

            % Create Nhpkhongphnlynghim2Label
            app.Nhpkhongphnlynghim2Label = uilabel(app.Nghiem);
            app.Nhpkhongphnlynghim2Label.HorizontalAlignment = 'right';
            app.Nhpkhongphnlynghim2Label.Position = [11 282 171 22];
            app.Nhpkhongphnlynghim2Label.Text = 'Nh�p kho�ng ph�n ly nghi�m 2';

            % Create KhoangPhanLyNghiem_2
            app.KhoangPhanLyNghiem_2 = uieditfield(app.Nghiem, 'numeric');
            app.KhoangPhanLyNghiem_2.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.KhoangPhanLyNghiem_2.Position = [197 283 100 22];
            app.KhoangPhanLyNghiem_2.Value = 2;

            % Create ChnphngphptmChiailptuyntnhDropDownLabel
            app.ChnphngphptmChiailptuyntnhDropDownLabel = uilabel(app.Nghiem);
            app.ChnphngphptmChiailptuyntnhDropDownLabel.HorizontalAlignment = 'right';
            app.ChnphngphptmChiailptuyntnhDropDownLabel.Position = [15 157 270 22];
            app.ChnphngphptmChiailptuyntnhDropDownLabel.Text = 'Ch�n ph��ng ph�p t�m (Chia ��i, l�p, tuy�n t�nh)';

            % Create PhuongPhapTimNghiem
            app.PhuongPhapTimNghiem = uidropdown(app.Nghiem);
            app.PhuongPhapTimNghiem.Items = {'chiadoi', 'lapdon', 'tieptuyen'};
            app.PhuongPhapTimNghiem.ValueChangedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.PhuongPhapTimNghiem.Position = [300 157 100 22];
            app.PhuongPhapTimNghiem.Value = 'chiadoi';

            % Create button
            app.button = uibutton(app.Nghiem, 'push');
            app.button.ButtonPushedFcn = createCallbackFcn(app, @buttonPushed, true);
            app.button.Position = [270 105 100 22];
            app.button.Text = 'T�m nghi�m';

            % Create UIAxes
            app.UIAxes = uiaxes(app.Nghiem);
            title(app.UIAxes, '�� th� h�m s�')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.Position = [296 223 300 185];

            % Create NoiSuy
            app.NoiSuy = uitab(app.TabGroup);
            app.NoiSuy.Title = 'N�i suy';

            % Create NhpgitrcnnisuyEditFieldLabel
            app.NhpgitrcnnisuyEditFieldLabel = uilabel(app.NoiSuy);
            app.NhpgitrcnnisuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcnnisuyEditFieldLabel.Position = [23 268 131 22];
            app.NhpgitrcnnisuyEditFieldLabel.Text = 'Nh�p gi� tr� c�n n�i suy';

            % Create NhapGiaTriCanNoiSuy
            app.NhapGiaTriCanNoiSuy = uieditfield(app.NoiSuy, 'numeric');
            app.NhapGiaTriCanNoiSuy.ValueChangedFcn = createCallbackFcn(app, @ButtonNoiSuyPushed, true);
            app.NhapGiaTriCanNoiSuy.Position = [169 268 100 22];
            app.NhapGiaTriCanNoiSuy.Value = 0.14;

            % Create KtqunisuyEditFieldLabel
            app.KtqunisuyEditFieldLabel = uilabel(app.NoiSuy);
            app.KtqunisuyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqunisuyEditFieldLabel.Position = [373 82 88 22];
            app.KtqunisuyEditFieldLabel.Text = 'K�t qu� n�i suy';

            % Create KetQuaNoiSuy
            app.KetQuaNoiSuy = uieditfield(app.NoiSuy, 'numeric');
            app.KetQuaNoiSuy.ValueChangedFcn = createCallbackFcn(app, @ButtonNoiSuyPushed, true);
            app.KetQuaNoiSuy.Position = [476 82 100 22];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.NoiSuy);
            title(app.UIAxes2, 'Title')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            app.UIAxes2.Position = [325 233 300 185];

            % Create ChnphngthcnisuyDropDownLabel
            app.ChnphngthcnisuyDropDownLabel = uilabel(app.NoiSuy);
            app.ChnphngthcnisuyDropDownLabel.HorizontalAlignment = 'right';
            app.ChnphngthcnisuyDropDownLabel.Position = [14 212 149 22];
            app.ChnphngthcnisuyDropDownLabel.Text = 'Ch�n ph��ng th�c n�i suy';

            % Create PhuongThucNoiSuy
            app.PhuongThucNoiSuy = uidropdown(app.NoiSuy);
            app.PhuongThucNoiSuy.Items = {'Newton', 'Lagrange'};
            app.PhuongThucNoiSuy.ValueChangedFcn = createCallbackFcn(app, @ButtonNoiSuyPushed, true);
            app.PhuongThucNoiSuy.Position = [178 212 100 22];
            app.PhuongThucNoiSuy.Value = 'Lagrange';

            % Create ButtonNoiSuy
            app.ButtonNoiSuy = uibutton(app.NoiSuy, 'push');
            app.ButtonNoiSuy.ButtonPushedFcn = createCallbackFcn(app, @ButtonNoiSuyPushed, true);
            app.ButtonNoiSuy.Position = [268 131 100 22];
            app.ButtonNoiSuy.Text = 'T�nh n�i suy';

            % Create NhpdliuxEditFieldLabel_2
            app.NhpdliuxEditFieldLabel_2 = uilabel(app.NoiSuy);
            app.NhpdliuxEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel_2.Position = [50 361 83 22];
            app.NhpdliuxEditFieldLabel_2.Text = 'Nh�p d� li�u x';

            % Create NhapDuLieuX
            app.NhapDuLieuX = uieditfield(app.NoiSuy, 'text');
            app.NhapDuLieuX.Position = [148 361 100 22];
            app.NhapDuLieuX.Value = '[0.1, 0.2, 0.3, 0.4]';

            % Create NhpdliuyEditFieldLabel
            app.NhpdliuyEditFieldLabel = uilabel(app.NoiSuy);
            app.NhpdliuyEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel.Position = [50 314 83 22];
            app.NhpdliuyEditFieldLabel.Text = 'Nh�p d� li�u y';

            % Create NhapDuLieuY
            app.NhapDuLieuY = uieditfield(app.NoiSuy, 'text');
            app.NhapDuLieuY.Position = [148 314 100 22];
            app.NhapDuLieuY.Value = '[0.09983, 0.19867, 0.29552, 0.38942]';

            % Create KtquathcnisuyEditFieldLabel
            app.KtquathcnisuyEditFieldLabel = uilabel(app.NoiSuy);
            app.KtquathcnisuyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquathcnisuyEditFieldLabel.Position = [31 82 132 22];
            app.KtquathcnisuyEditFieldLabel.Text = 'K�t qu� �a th�c n�i suy';

            % Create KetQuaDaThucNoiSuy
            app.KetQuaDaThucNoiSuy = uieditfield(app.NoiSuy, 'text');
            app.KetQuaDaThucNoiSuy.Position = [178 82 100 22];

            % Create HiquyTab
            app.HiquyTab = uitab(app.TabGroup);
            app.HiquyTab.SizeChangedFcn = createCallbackFcn(app, @ButtonHoiQuyValueChanged, true);
            app.HiquyTab.Title = 'H�i quy';

            % Create NhpgitrcndonEditFieldLabel
            app.NhpgitrcndonEditFieldLabel = uilabel(app.HiquyTab);
            app.NhpgitrcndonEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcndonEditFieldLabel.Position = [22 176 138 22];
            app.NhpgitrcndonEditFieldLabel.Text = 'Nh�p gi� tr� c�n d� �o�n';

            % Create GiaTriCanDuDoan
            app.GiaTriCanDuDoan = uieditfield(app.HiquyTab, 'numeric');
            app.GiaTriCanDuDoan.ValueChangedFcn = createCallbackFcn(app, @ButtonHoiQuyValueChanged, true);
            app.GiaTriCanDuDoan.Position = [175 176 100 22];
            app.GiaTriCanDuDoan.Value = 3;

            % Create KtqudonEditFieldLabel
            app.KtqudonEditFieldLabel = uilabel(app.HiquyTab);
            app.KtqudonEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqudonEditFieldLabel.Position = [369 58 95 22];
            app.KtqudonEditFieldLabel.Text = 'K�t qu� d� �o�n';

            % Create KetQuaDuDoan
            app.KetQuaDuDoan = uieditfield(app.HiquyTab, 'numeric');
            app.KetQuaDuDoan.ValueChangedFcn = createCallbackFcn(app, @ButtonHoiQuyValueChanged, true);
            app.KetQuaDuDoan.Position = [479 58 100 22];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.HiquyTab);
            title(app.UIAxes3, '�� th� h�i quy')
            xlabel(app.UIAxes3, 'X')
            ylabel(app.UIAxes3, 'Y')
            app.UIAxes3.Position = [309 235 300 185];

            % Create NhpdliuXEditFieldLabel
            app.NhpdliuXEditFieldLabel = uilabel(app.HiquyTab);
            app.NhpdliuXEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpdliuXEditFieldLabel.Position = [48 335 86 22];
            app.NhpdliuXEditFieldLabel.Text = 'Nh�p d� li�u X';

            % Create NhapDuLieuX_HoiQuy
            app.NhapDuLieuX_HoiQuy = uieditfield(app.HiquyTab, 'text');
            app.NhapDuLieuX_HoiQuy.ValueChangedFcn = createCallbackFcn(app, @ButtonHoiQuyValueChanged, true);
            app.NhapDuLieuX_HoiQuy.Position = [149 335 100 22];
            app.NhapDuLieuX_HoiQuy.Value = '[1,2,3,4,5,6,7,8,9]';

            % Create NhpdliuYLabel
            app.NhpdliuYLabel = uilabel(app.HiquyTab);
            app.NhpdliuYLabel.HorizontalAlignment = 'right';
            app.NhpdliuYLabel.Position = [48 288 86 22];
            app.NhpdliuYLabel.Text = 'Nh�p d� li�u Y';

            % Create NhapDuLieuY_HoiQuy
            app.NhapDuLieuY_HoiQuy = uieditfield(app.HiquyTab, 'text');
            app.NhapDuLieuY_HoiQuy.ValueChangedFcn = createCallbackFcn(app, @ButtonHoiQuyValueChanged, true);
            app.NhapDuLieuY_HoiQuy.Position = [149 288 100 22];
            app.NhapDuLieuY_HoiQuy.Value = '[1,1.5,2,3,4,5,8,10,13]';

            % Create ChnphngthchiquyDropDownLabel
            app.ChnphngthchiquyDropDownLabel = uilabel(app.HiquyTab);
            app.ChnphngthchiquyDropDownLabel.HorizontalAlignment = 'right';
            app.ChnphngthchiquyDropDownLabel.Position = [14 235 150 22];
            app.ChnphngthchiquyDropDownLabel.Text = 'Ch�n ph��ng th�c h�i quy';

            % Create PhuongThucHoiQuy
            app.PhuongThucHoiQuy = uidropdown(app.HiquyTab);
            app.PhuongThucHoiQuy.Items = {'TuyenTinh', 'HamMu', 'Logarith'};
            app.PhuongThucHoiQuy.ValueChangedFcn = createCallbackFcn(app, @ButtonHoiQuyValueChanged, true);
            app.PhuongThucHoiQuy.Position = [175 235 100 22];
            app.PhuongThucHoiQuy.Value = 'HamMu';

            % Create KtquphuongtrnhhiquyEditFieldLabel
            app.KtquphuongtrnhhiquyEditFieldLabel = uilabel(app.HiquyTab);
            app.KtquphuongtrnhhiquyEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquphuongtrnhhiquyEditFieldLabel.Position = [36 58 159 22];
            app.KtquphuongtrnhhiquyEditFieldLabel.Text = 'K�t qu� phuong tr�nh h�i quy';

            % Create KetQuaPhuongTringHoiQuy
            app.KetQuaPhuongTringHoiQuy = uieditfield(app.HiquyTab, 'text');
            app.KetQuaPhuongTringHoiQuy.ValueChangedFcn = createCallbackFcn(app, @ButtonHoiQuyValueChanged, true);
            app.KetQuaPhuongTringHoiQuy.Position = [210 58 100 22];

            % Create ButtonHoiQuy
            app.ButtonHoiQuy = uibutton(app.HiquyTab, 'state');
            app.ButtonHoiQuy.ValueChangedFcn = createCallbackFcn(app, @ButtonHoiQuyValueChanged, true);
            app.ButtonHoiQuy.Text = 'H�i quy';
            app.ButtonHoiQuy.Position = [270 122 100 22];

            % Create ohmTab
            app.ohmTab = uitab(app.TabGroup);
            app.ohmTab.Title = '��o h�m';

            % Create NhpbchEditFieldLabel
            app.NhpbchEditFieldLabel = uilabel(app.ohmTab);
            app.NhpbchEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpbchEditFieldLabel.Position = [34 209 76 22];
            app.NhpbchEditFieldLabel.Text = 'Nh�p b��c h';

            % Create NhapBuocH
            app.NhapBuocH = uieditfield(app.ohmTab, 'numeric');
            app.NhapBuocH.Position = [125 209 100 22];

            % Create NhpgitrsaisOhvOh2EditFieldLabel
            app.NhpgitrsaisOhvOh2EditFieldLabel = uilabel(app.ohmTab);
            app.NhpgitrsaisOhvOh2EditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrsaisOhvOh2EditFieldLabel.Position = [261 251 187 22];
            app.NhpgitrsaisOhvOh2EditFieldLabel.Text = 'Nh�p gi� tr� sai s�  O(h) v� O(h^2)';

            % Create NhapGiaTriSaiSo
            app.NhapGiaTriSaiSo = uieditfield(app.ohmTab, 'numeric');
            app.NhapGiaTriSaiSo.Position = [463 251 100 22];

            % Create NhpgitrcntnhohmEditFieldLabel
            app.NhpgitrcntnhohmEditFieldLabel = uilabel(app.ohmTab);
            app.NhpgitrcntnhohmEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpgitrcntnhohmEditFieldLabel.Position = [273 300 163 22];
            app.NhpgitrcntnhohmEditFieldLabel.Text = 'Nh�p gi� tr� c�n t�nh ��o h�m';

            % Create GiaTriCanDaoHam
            app.GiaTriCanDaoHam = uieditfield(app.ohmTab, 'text');
            app.GiaTriCanDaoHam.Position = [451 300 100 22];

            % Create KtquEditFieldLabel
            app.KtquEditFieldLabel = uilabel(app.ohmTab);
            app.KtquEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquEditFieldLabel.Position = [216 85 47 22];
            app.KtquEditFieldLabel.Text = 'K�t qu�';

            % Create KetQua
            app.KetQua = uieditfield(app.ohmTab, 'numeric');
            app.KetQua.Position = [278 85 100 22];

            % Create HocLabel_2
            app.HocLabel_2 = uilabel(app.ohmTab);
            app.HocLabel_2.Position = [109 251 34 22];
            app.HocLabel_2.Text = 'Ho�c';

            % Create NhpdliuxEditFieldLabel_3
            app.NhpdliuxEditFieldLabel_3 = uilabel(app.ohmTab);
            app.NhpdliuxEditFieldLabel_3.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel_3.Position = [19 376 83 22];
            app.NhpdliuxEditFieldLabel_3.Text = 'Nh�p d� li�u x';

            % Create NhapDuLieuX_DaoHam
            app.NhapDuLieuX_DaoHam = uieditfield(app.ohmTab, 'text');
            app.NhapDuLieuX_DaoHam.Position = [117 376 100 22];

            % Create NhpdliuyLabel
            app.NhpdliuyLabel = uilabel(app.ohmTab);
            app.NhpdliuyLabel.HorizontalAlignment = 'right';
            app.NhpdliuyLabel.Position = [19 334 83 22];
            app.NhpdliuyLabel.Text = 'Nh�p d� li�u y';

            % Create NhapDuLieuY_DaoHam
            app.NhapDuLieuY_DaoHam = uieditfield(app.ohmTab, 'text');
            app.NhapDuLieuY_DaoHam.Position = [117 334 100 22];

            % Create NhphmsEditFieldLabel_2
            app.NhphmsEditFieldLabel_2 = uilabel(app.ohmTab);
            app.NhphmsEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NhphmsEditFieldLabel_2.Position = [25 288 77 22];
            app.NhphmsEditFieldLabel_2.Text = 'Nh�p h�m s�';

            % Create NhapHamSo
            app.NhapHamSo = uieditfield(app.ohmTab, 'text');
            app.NhapHamSo.Position = [117 288 100 22];

            % Create ChnphngphpohmDropDownLabel
            app.ChnphngphpohmDropDownLabel = uilabel(app.ohmTab);
            app.ChnphngphpohmDropDownLabel.HorizontalAlignment = 'right';
            app.ChnphngphpohmDropDownLabel.Position = [273 384 163 22];
            app.ChnphngphpohmDropDownLabel.Text = 'Ch�n ph��ng ph�p ��o h�m ';

            % Create ChonPhuongThucDaoHam
            app.ChonPhuongThucDaoHam = uidropdown(app.ohmTab);
            app.ChonPhuongThucDaoHam.Position = [451 384 100 22];

            % Create ButtonDaoHam
            app.ButtonDaoHam = uibutton(app.ohmTab, 'state');
            app.ButtonDaoHam.Text = 'Button';
            app.ButtonDaoHam.Position = [255 149 100 22];

            % Create TichPhan
            app.TichPhan = uitab(app.TabGroup);
            app.TichPhan.Title = 'T�ch ph�n';

            % Create NhpNEditFieldLabel
            app.NhpNEditFieldLabel = uilabel(app.TichPhan);
            app.NhpNEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpNEditFieldLabel.Position = [332 204 46 22];
            app.NhpNEditFieldLabel.Text = 'Nh�p N';

            % Create NhapN
            app.NhapN = uieditfield(app.TichPhan, 'numeric');
            app.NhapN.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.NhapN.Position = [393 204 100 22];
            app.NhapN.Value = 25;

            % Create KtquEditFieldLabel_2
            app.KtquEditFieldLabel_2 = uilabel(app.TichPhan);
            app.KtquEditFieldLabel_2.HorizontalAlignment = 'right';
            app.KtquEditFieldLabel_2.Position = [209 77 47 22];
            app.KtquEditFieldLabel_2.Text = 'K�t qu�';

            % Create KetQuaTichPhan
            app.KetQuaTichPhan = uieditfield(app.TichPhan, 'numeric');
            app.KetQuaTichPhan.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.KetQuaTichPhan.Position = [271 77 100 22];

            % Create HocLabel
            app.HocLabel = uilabel(app.TichPhan);
            app.HocLabel.Position = [105 244 34 22];
            app.HocLabel.Text = 'Ho�c';

            % Create NhpdliuxEditFieldLabel_4
            app.NhpdliuxEditFieldLabel_4 = uilabel(app.TichPhan);
            app.NhpdliuxEditFieldLabel_4.HorizontalAlignment = 'right';
            app.NhpdliuxEditFieldLabel_4.Position = [20 352 83 22];
            app.NhpdliuxEditFieldLabel_4.Text = 'Nh�p d� li�u x';

            % Create NhapDuLieuX_TichPhan
            app.NhapDuLieuX_TichPhan = uieditfield(app.TichPhan, 'text');
            app.NhapDuLieuX_TichPhan.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.NhapDuLieuX_TichPhan.Position = [118 352 100 22];
            app.NhapDuLieuX_TichPhan.Value = '[0.1,0.3,0.5,0.7,0.9]';

            % Create NhpdliuyEditFieldLabel_2
            app.NhpdliuyEditFieldLabel_2 = uilabel(app.TichPhan);
            app.NhpdliuyEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NhpdliuyEditFieldLabel_2.Position = [26 310 83 22];
            app.NhpdliuyEditFieldLabel_2.Text = 'Nh�p d� li�u y';

            % Create NhapDuLieuY_TichPhan
            app.NhapDuLieuY_TichPhan = uieditfield(app.TichPhan, 'text');
            app.NhapDuLieuY_TichPhan.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.NhapDuLieuY_TichPhan.Position = [124 310 100 22];
            app.NhapDuLieuY_TichPhan.Value = '[0.1002, 0.3047, 0.5236, 0.7754, 1.1198]';

            % Create ChnphngphptchphnDropDownLabel
            app.ChnphngphptchphnDropDownLabel = uilabel(app.TichPhan);
            app.ChnphngphptchphnDropDownLabel.HorizontalAlignment = 'right';
            app.ChnphngphptchphnDropDownLabel.Position = [274 390 163 22];
            app.ChnphngphptchphnDropDownLabel.Text = 'Ch�n ph��ng ph�p t�ch ph�n';

            % Create PhuongPhapTichPhan
            app.PhuongPhapTichPhan = uidropdown(app.TichPhan);
            app.PhuongPhapTichPhan.Items = {'HinhThang', 'Simpson1/3', 'Simpson3/8'};
            app.PhuongPhapTichPhan.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.PhuongPhapTichPhan.Position = [452 390 100 22];
            app.PhuongPhapTichPhan.Value = 'Simpson1/3';

            % Create NhpcnaEditFieldLabel
            app.NhpcnaEditFieldLabel = uilabel(app.TichPhan);
            app.NhpcnaEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpcnaEditFieldLabel.Position = [322 331 67 22];
            app.NhpcnaEditFieldLabel.Text = 'Nh�p c�n a';

            % Create NhapcanA
            app.NhapcanA = uieditfield(app.TichPhan, 'numeric');
            app.NhapcanA.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.NhapcanA.Position = [404 331 100 22];

            % Create NhpcnbEditFieldLabel
            app.NhpcnbEditFieldLabel = uilabel(app.TichPhan);
            app.NhpcnbEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpcnbEditFieldLabel.Position = [322 286 67 22];
            app.NhpcnbEditFieldLabel.Text = 'Nh�p c�n b';

            % Create NhapCanB
            app.NhapCanB = uieditfield(app.TichPhan, 'numeric');
            app.NhapCanB.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.NhapCanB.Position = [404 286 100 22];
            app.NhapCanB.Value = 1;

            % Create NhphmsEditFieldLabel_3
            app.NhphmsEditFieldLabel_3 = uilabel(app.TichPhan);
            app.NhphmsEditFieldLabel_3.HorizontalAlignment = 'right';
            app.NhphmsEditFieldLabel_3.Position = [26 192 77 22];
            app.NhphmsEditFieldLabel_3.Text = 'Nh�p h�m s�';

            % Create NhapHamSoTichPhan
            app.NhapHamSoTichPhan = uieditfield(app.TichPhan, 'text');
            app.NhapHamSoTichPhan.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.NhapHamSoTichPhan.Position = [118 192 100 22];
            app.NhapHamSoTichPhan.Value = 'x^3 * sin(x) * cos(x) *x';

            % Create ButtonTichPhan
            app.ButtonTichPhan = uibutton(app.TichPhan, 'state');
            app.ButtonTichPhan.ValueChangedFcn = createCallbackFcn(app, @ButtonTichPhanValueChanged, true);
            app.ButtonTichPhan.Text = 'T�nh t�ch ph�n';
            app.ButtonTichPhan.Position = [240 128 100 22];

            % Create ChncchnhpDropDownLabel
            app.ChncchnhpDropDownLabel = uilabel(app.TichPhan);
            app.ChncchnhpDropDownLabel.HorizontalAlignment = 'right';
            app.ChncchnhpDropDownLabel.Position = [26 398 93 22];
            app.ChncchnhpDropDownLabel.Text = 'Ch�n c�ch nh�p';

            % Create CachNhap
            app.CachNhap = uidropdown(app.TichPhan);
            app.CachNhap.Items = {'NhapChuoi', 'NhapHamSo'};
            app.CachNhap.Position = [134 398 100 22];
            app.CachNhap.Value = 'NhapHamSo';

            % Create Tab
            app.Tab = uitab(app.TabGroup);
            app.Tab.Title = 'Tab';

            % Create GiithiuthnhvinnhimvgiithiunhmLabel
            app.GiithiuthnhvinnhimvgiithiunhmLabel = uilabel(app.Tab);
            app.GiithiuthnhvinnhimvgiithiunhmLabel.Position = [178 239 283 52];
            app.GiithiuthnhvinnhimvgiithiunhmLabel.Text = 'Gi�i thi�u th�nh vi�n, nhi�m v�, gi�i thi�u nh�m ';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = DoAn_a

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