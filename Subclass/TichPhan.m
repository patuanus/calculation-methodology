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