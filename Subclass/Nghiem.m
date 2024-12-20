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