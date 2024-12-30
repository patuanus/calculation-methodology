        % Callback function: ButtonDaoHam, CachNhapDaoHam, 
        % ChonPhuongThucDaoHam, GiaTriCanDaoHam, KetQua, NhapBuocH, 
        % NhapDuLieuX_DaoHam, NhapDuLieuY_DaoHam, NhapGiaTriSaiSo, 
        % NhapHamSo, ohmTab
        function ButtonDaoHamValueChanged(app, event)
            value = app.ButtonDaoHam.Value;
            f = app.NhapHamSo.Value;
            X = str2num(app.NhapDuLieuX_DaoHam.Value);
            Y = str2num(app.NhapDuLieuY_DaoHam.Value);
            
            pp1 = app.CachNhapDaoHam.Value;
            h = app.NhapBuocH.Value;
            X_a = app.GiaTriCanDaoHam.Value;
            %result = app.KetQua.Value;
            pp = app.ChonPhuongThucDaoHam.Value;
            pp2 = app.NhapGiaTriSaiSo.Value;
          
            
            %%% xap xi tien
            
            if strcmp (pp , "XapXiTien") 
                
                if strcmp(pp1,"NhapHam")
                    if strcmp(pp2 ,"O(h)")
                        f = str2func(['@(x)',f]);
                        app.KetQua.Value  = (f(X_a +1*h) - f(X_a))/h;
                    end
                    
                    if strcmp(pp2 ,"O(h^2)")
                         f = str2func(['@(x)',f]);
                        app.KetQua.Value = (-1*f(X_a + 2*h) + 4*f(X_a + 1*h) - 3 *f(X_a)) / (2*h);
                    end
                end  
                
                if  strcmp(pp1,"NhapChuoi")
                    if strcmp(pp2,"O(h)")
                        n = length(X);
                        %temp = X_a;
                        %temp = 0;
                        position = 0;
                        for i = 1:1:n
                            if X(i) == app.GiaTriCanDaoHam.Value
                               % position = 0;
                                position = i;
                            end
                        end    
                       % position = temp
                        temp1 = position + 1 
                        app.KetQua.Value = (Y(temp1) - Y(position)) / h;
                    end
                    if strcmp(pp2,"O(h^2)")
                        n = length(X);
                        temp = X_a;
                        position = 0;
                        for i = 1: n
                            if X(i) == temp
                                position = i;
                            end
                        end
                        app.KetQua.Value = (-1*Y(position + 2) + 4 * Y(position + 1) - 3 * Y(position))/(2 * h);
                        
                    end
                end
            end
            
                %%%%% xap xi lui
            if strcmp(pp, "XapXiLui")
                %%% Nhap Ham
                if strcmp(pp1, "NhapHam")
                    if strcmp(pp2,"O(h)")
                        f = str2func(['@(x)',f]);
                        app.KetQua.Value = (f(X_a) - f(X_a - 1*h))/h;
                    end
                    if strcmp(pp2, "O(h^2)")
                        f = str2func(['@(x)',f]);
                        app.KetQua.Value = (3*f(X_a) - 4*f(X_a - 1*h) + f(X_a - 2*h))/ 2*h;
                    end
                end
                %%% Nhap Chuoi
                if strcmp(pp1,"NhapChuoi")
                    if strcmp(pp2,"O(h)")
                        n = length(X);
                        position_a = 0;
                        for i = 1:n
                            if X(i) == X_a
                                position_a = i;
                            end
                        end 
                        app.KetQua.Value = (3*Y(position_a) - Y(position_a - 1)) / h;   
                    end
                    if strcmp(pp2,"O(h^2)")
           
                        n = length(X);
                        position_b = 0;
                        for i = 1: n
                            if X(i) == X_a
                                position_b = i;
                            end
                        end
                        if(position_b - 2 == 0)
                            uialert(app.UIFigure, 'Vui lòng nh?p l?i giá tr? ??o hàm sao cho X(i - 2) > 0 ','L?i nh?p li?u', 'Icon', 'error');
                        else
                        app.KetQua.Value = (3*Y(position_b) - 4 * Y(position_b -1) + Y(position_b - 2)) / 2*h;
                        end
                     end
                end
                
            end         
            
            %%%%% Trung tam
                if strcmp(pp, "TrungTam")
                    %Nhap Ham
                    if strcmp(pp1, "NhapHam")
                        if strcmp(pp2, "O(h^2)")
                            f = str2func(['@(x)',f]);
                            app.KetQua.Value = (f(X_a + 1*h) - f(X_a -1*h))/2*h;
                        end
                        if strcmp(pp2,"O(h)")
                             uialert(app.UIFigure, 'Vui lòng nh?p l?i giá tr? ??o hàm sao cho X(i - 2) > 0 ','L?i nh?p li?u', 'Icon', 'error');
                        end
                    end
                    %Nhap Chuoi
                    if strcmp(pp1,"NhapChuoi")
                        if strcmp(pp2,"O(h^2)")
                            n = length(X);
                            position_c = 0;
                            for i = 1: n
                                if X(i) == X_a
                                    position_c = i;
                                end
                            end
                            app.KetQua.Value = (Y(position_c +1) -Y(position_c -1 ))/2*h;
                        end
                        if strcmp(pp2, "O(h)")
                            uialert(app.UIFigure, 'Invalid undentified O(h) ','L?i nh?p li?u', 'Icon', 'error');
                        end
                    end
                end
            
        end
    end