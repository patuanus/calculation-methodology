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