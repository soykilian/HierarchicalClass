%%% Definition of classes 
% 1: LFM
% 2: LFM triangular
% 3: LFM escalonada
% 4: FM  (2FSK, 4FSK, 8FSK, Costas)
% 5: 2PSK
% 6: 4PSK
% 7: 8PSK
% 8: Barker
% 9: Frank
% 10: NM
[status,msg,msgID] = mkdir('Dataset_grouped');
snr = 18:2:20;
i_train =  10;
i_val= 1;
i_test = 1;

total = length(snr)*10;
% 
X_train = zeros(total*i_train,1024,2);
Y_train = zeros(total*i_train, 10);
lbl_train = zeros(total*i_train, 6);
 
X_val = zeros(total*i_val,1024,2);
 Y_val = zeros(total*i_val, 10);
lbl_val = zeros(total*i_val, 6);

X_test = zeros(total*i_test,1024,2);
Y_test = zeros(total*i_test, 10);
lbl_test = zeros(total*i_test, 6);
fm_train = i_train/4;
fm_val = i_val/4;
fm_test = i_test/4;
l_s = 1024;
ii = 1;
for i = 1:2
cAl = 1;
j = 1;
k = 1;
switch i
    case 1
        [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],1,[1/20, 1/4],[],[],[,0.025, 0.05,0.04, 0.1, 1],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],1,[1/20, 1/4],[],[],[],[0.025, 0.05,0.04, 0.1, 1],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X3,Y3,lbl3] = signal_generator(snr,i_val,[l_s, l_s],1,[1/20, 1/4],[],[],[],[0.025, 0.05,0.04, 0.1, 1],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
      
        fprintf('LFM generated\n');
          X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
         Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
         lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
        
         X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
         Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
         lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

        X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
        Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
        lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;
        ii = ii+1;
        fprintf('LFM stored\n');
      case 2
        [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],5,[1/20, 1/4],[0.8, 0.5, 0.6],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],5,[1/20, 1/4],[0.8, 0.5, 0.6],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X3,Y3,lbl3] = signal_generator(snr,i_val,[l_s, l_s],5,[1/20, 1/4],[0.8, 0.5, 0.6],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
      
        fprintf('LFM triang generated\n');
          X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
         Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
         lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
        
         X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
         Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
         lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

        X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
        Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
        lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;
        ii = ii+1;
        fprintf('LFM triang stored\n');
      case 3
        [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],6,[1/20, 1/4],[],[0.05, 0.025, 0.5],[0.5,1, 5],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],6,[1/20, 1/4],[],[0.05, 0.025, 0.5],[0.5, 1, 5],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X3,Y3,lbl3] = signal_generator(snr,i_val,[l_s, l_s],6,[1/20, 1/4],[],[0.05, 0.025, 0.5],[0.5, 1, 5],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
      
        fprintf('LFM esc generated\n');
          X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
         Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
         lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
        
         X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
         Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
         lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

        X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
        Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
        lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;
        ii = ii+1;
       
        fprintf('LFM esc stored\n');
        disp("--------------------till---------------------")
    case 4
        cAl = 1;
j = 1;
%                     length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1
%                      disp("-------------------till----------------------")
%                      length(snr)*((i_train*(ii-1)+(fm_train*(j)))
                     [X1,Y1,lbl1] = signal_generator(snr,fm_train,[l_s, l_s],2,[1/20, 1/4],[],[],[],[11, 17, 21, 25],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    [X2,Y2,lbl2] = signal_generator(snr,fm_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[11, 17, 21, 25],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    [X3,Y3,lbl3] = signal_generator(snr,fm_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[11, 17, 21, 25],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    fprintf('2FSK generated\n');
                     X_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:,:) = X1;
                     Y_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:) = Y1;
                     lbl_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:) = lbl1;

                       
                     X_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:,:) = X3;
                     Y_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:) = Y3;
                     lbl_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:) = lbl3;
                    
                    X_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:,:) = X2;
                     Y_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:) = Y2;
                     lbl_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:) = lbl2;
                    fprintf('2FSK stored\n');
         % MODIFY THE CLASS NUMBER     
         j = 2;
                [X1,Y1,lbl1] = signal_generator(snr,fm_train,[l_s, l_s],2,[1/20, 1/4],[],[],[],[5,7, 9],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    [X2,Y2,lbl2] = signal_generator(snr,fm_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[5,7,9],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    [X3,Y3,lbl3] = signal_generator(snr,fm_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[5,7,9],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    fprintf('4FSK generated\n');
                     X_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:,:) = X1;
                     Y_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:) = Y1;
                     lbl_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:) = lbl1;

                       
                     X_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:,:) = X3;
                     Y_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:) = Y3;
                     lbl_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:) = lbl3;
                    
                    X_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:,:) = X2;
                     Y_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:) = Y2;
                     lbl_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:) = lbl2;
                     (length(snr)*((i_test)*(ii-1)+(fm_test*(j)))) - (length(snr)*((i_test*(ii-1))+(fm_test*(j-1))))
                    fprintf('4FSK stored\n');
                   j =3;
                    [X1,Y1,lbl1] = signal_generator(snr,fm_train,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1,3],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    [X2,Y2,lbl2] = signal_generator(snr,fm_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1,3],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    [X3,Y3,lbl3] = signal_generator(snr,fm_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1,3],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    fprintf('8FSK generated\n');
                     X_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:,:) = X1;
                     Y_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:) = Y1;
                     lbl_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:) = lbl1;

                       
                     X_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:,:) = X3;
                     Y_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:) = Y3;
                     lbl_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:) = lbl3;
                    
                    X_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:,:) = X2;
                     Y_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:) = Y2;
                     lbl_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:) = lbl2;
                    fprintf('8FSK stored\n');
                j=4;
                cAl = 0;
              [X1,Y1,lbl1] = signal_generator(snr,fm_train,[l_s, l_s],2,[1/20, 1/4],[],[],[],[2,3,4,5,6,8,10],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                [X2,Y2,lbl2] = signal_generator(snr,fm_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[2,3,4,5,6,8,10],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                [X3,Y3,lbl3] = signal_generator(snr,fm_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[2,3,4,5,6,8,10],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                fprintf('Costas generated\n');
                     X_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:,:) = X1;
                     Y_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:) = Y1;
                     lbl_train((length(snr)*((i_train*(ii-1))+(fm_train*(j-1)))+1: length(snr)*((i_train)*(ii-1)+(fm_train*(j)))),:) = lbl1;

                       
                     X_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:,:) = X3;
                     Y_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:) = Y3;
                     lbl_val((length(snr)*((i_val*(ii-1))+(fm_val*(j-1)))+1: length(snr)*((i_val)*(ii-1)+(fm_val*(j)))),:) = lbl3;
                    
                    X_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:,:) = X2;
                     Y_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:) = Y2;
                     lbl_test((length(snr)*((i_test*(ii-1))+(fm_test*(j-1)))+1: length(snr)*((i_test)*(ii-1)+(fm_test*(j)))),:) = lbl2;
                ii = ii+1;
                fprintf('Costas Stored\n');
    case 6
     cAl = 1;
       
          [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,9,10,11, 17],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,9,10,11,17],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,9,10,11,17],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            fprintf('BPSK generated\n');
            X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
            Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
            lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
            
            X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
            Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
            lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

            X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
            Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
            lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;
            ii = ii+1;
            fprintf('BPSK stored\n');
            j = j + 1;
             [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,9,10],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,9,10],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,9,10],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            fprintf('QPSK generated\n');
            X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
            Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
            lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
            
            X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
            Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
            lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

            X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
            Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
            lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;
             ii = ii+1;
            fprintf('QPSK stored\n');
           
              j = j + 1;
             [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            fprintf('8PSK generated\n');
            X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
            Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
            lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
            
            X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
            Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
            lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

            X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
            Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
            lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;
             ii = ii+1;
            fprintf('8PSK stored\n');
        cAl = 0;
            [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,11,13],[1/100, 1/20],1,[7 10 15 20],1,1,cAl,1,[],[],[]);
            [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,11,13],[1/100, 1/20],1,[7 10 15 20],j,1,cAl,1,[],[],[]);
            [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,11,13],[1/100, 1/20],1,[7 10 15 20],j,1,cAl,1,[],[],[]);
            fprintf('Barker modulation generated\n');
            X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
            Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
            lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
            
            X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
            Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
            lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

            X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
            Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
            lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;

            ii = ii+1;
            fprintf('Barker modulation stored\n');
    case 7 
        cAl=0;
            [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,13],[1/100, 1/20],1,[7 10 15 20],1,1,cAl,2,[],[],[]);
            [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1,3,5,7,13],[1/100, 1/20],1,[7 10 15 20],2,1,cAl,2,[],[],[]);
            [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[,3,5,7,13],[1/100, 1/20],1,[7 10 15 20],2,1,cAl,2,[],[],[]);
            fprintf('Frank modulation generated\n');
            X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
            Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
            lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
            
            X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
            Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
            lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

            X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
            Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
            lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;

            ii = ii+1;
            fprintf('Frank modulation stored\n');
    case 8
        cAl = 1;
        [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],4,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
        [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],4,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
        [X3,Y3,lbl3] = signal_generator(snr,i_val,[l_s, l_s],4,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
        fprintf('NM generated\n');
              X_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:,:) = X1;
             Y_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = Y1;
            lbl_train(length(snr)*i_train*(ii-1)+1:length(snr)*i_train*(ii),:) = lbl1;
            
 			 X_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:,:) = X3;
			 Y_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = Y3;
			 lbl_val(length(snr)*i_val*(ii-1)+1:length(snr)*i_val*(ii),:) = lbl3;

            X_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:,:) = X2;
            Y_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = Y2;
            lbl_test(length(snr)*i_test*(ii-1)+1:length(snr)*i_test*(ii),:) = lbl2;
        ii = ii+1;
        fprintf('NM stored\n');
end
end

 fprintf('Beginning to save\n');
  save('Dataset_grouped/X_train.mat', 'X_train', '-v7.3', '-nocompression')
  fprintf('X train saved\n');
 save('Dataset_grouped/Y_train.mat', 'Y_train')
 fprintf('Y train saved\n');
 save('Dataset_grouped/lbl_train.mat', 'lbl_train')
 fprintf('lbl train saved\n');
 
  save('Dataset_grouped/X_val.mat', 'X_val', '-v7.3', '-nocompression')
 fprintf('X_val train saved\n');
 save('Dataset_grouped/Y_val.mat', 'Y_val')
 fprintf('Y_val train saved\n');
 save('Dataset_grouped/lbl_val.mat', 'lbl_val')
 fprintf('lbl_val saved\n');

 save('Dataset_grouped/X_test.mat', 'X_test', '-v7.3', '-nocompression')
  fprintf('X_test train saved\n');
 save('Dataset_grouped/Y_test.mat', 'Y_test')
 fprintf('Y test saved\n');
 save('Dataset_grouped/lbl_test.mat', 'lbl_test')
 fprintf('lbl_test saved\n');

