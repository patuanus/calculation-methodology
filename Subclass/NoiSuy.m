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