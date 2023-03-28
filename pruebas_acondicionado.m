%%% Definition of classes 
% 1: LFM
% 2: LFM triangular
% 3: LFM escalonada
% 4: 2FSK
% 5: 4FSK
% 6: 8FSK
% 7: Costas
% 8: 2PSK
% 9: 4PSK
% 10: 8PSK
% 11: Barker
% 12: Frank
% 13: NM
[status,msg,msgID] = mkdir('Dataset_time');
snr = -10:2:20;
i_train =  900;
i_val= 300;
i_test = 300;

total = length(snr)*13;
% 
X_train = zeros(total*i_train,1024,2);
Y_train = zeros(total*i_train, 13);
lbl_train = zeros(total*i_train, 6);
 
X_val = zeros(total*i_val,1024,2);
 Y_val = zeros(total*i_val, 13);
lbl_val = zeros(total*i_val, 6);

X_test = zeros(total*i_test,1024,2);
Y_test = zeros(total*i_test, 13);
lbl_test = zeros(total*i_test, 6);

l_s = 1024;
ii = 1;
for i = 1:8
cAl = 1;
j = 1;
k = 1;
switch i
    case 1
        [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],1,[1/4, 0.3],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],1,[1/4, 0.3],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X3,Y3,lbl3] = signal_generator(snr,i_val,[l_s, l_s],1,[1/4, 0.3],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
      
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
        [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],5,[1/4, 0.3],[0.4, 0.5, 0.6],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],5,[1/4, 0.3],[0.4, 0.5, 0.6],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X3,Y3,lbl3] = signal_generator(snr,i_val,[l_s, l_s],5,[1/4, 0.3],[0.4, 0.5, 0.6],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
      
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
        [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],6,[1/4, 0.3],[],[5, 0.5, 0.25, 0.025],[0.5, 1, 5],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],6,[1/4, 0.3],[],[5, 0.5, 0.25, 0.025],[0.5, 1, 5],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
        [X3,Y3,lbl3] = signal_generator(snr,i_val,[l_s, l_s],6,[1/4, 0.3],[],[5, 0.5, 0.25, 0.025],[0.5, 1, 5],[1, 2, 5, 10, 15],[1/100, 1/20],j,[],j,1,cAl,k,[],[],[]);
      
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
    case 4
        cAl = 1;
      for j = 1:3
                     [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                    fprintf('FSK generated\n');
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
                    fprintf('FSK stored\n');
         % MODIFY THE CLASS NUMBER      
                end
                cAl = 0;
              [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],2,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[20],j,1,cAl,k,[],[],[]);
                fprintf('Costas generated\n');
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
                fprintf('Costas Stored\n');
    case 6
     cAl = 1;
        for j = 1:3
          [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],j,[2,5, 10, 15, 20],j,1,cAl,k,[],[],[]);
            fprintf('PSK generated\n');
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
            fprintf('PSK stored\n');
        end
        cAl = 0;
            [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],1,[7 10 15 20],1,1,cAl,k,[],[],[]);
            [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],1,[7 10 15 20],j,1,cAl,k,[],[],[]);
            [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],1,[7 10 15 20],j,1,cAl,k,[],[],[]);
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
                    [X1,Y1,lbl1] = signal_generator(snr,i_train,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],2,[7 10 15 20],j,1,cAl,k,[],[],[]);
            [X2,Y2,lbl2] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],1,[7 10 15 20],2,1,cAl,k,[],[],[]);
            [X3,Y3,lbl3] = signal_generator(snr,i_test,[l_s, l_s],3,[1/20, 1/4],[],[],[],[1, 2, 5, 10, 15],[1/100, 1/20],1,[7 10 15 20],2,1,cAl,k,[],[],[]);
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
  save('Dataset_time/X_train.mat', 'X_train', '-v7.3', '-nocompression')
  fprintf('X train saved\n');
% save('Dataset_time/Corr_train.mat', 'Corr_train', '-v7.3', '-nocompression')
% fprintf('Correlation train saved\n');
 save('Dataset_time/Y_train.mat', 'Y_train')
 fprintf('Y train saved\n');
 save('Dataset_time/lbl_train.mat', 'lbl_train')
 fprintf('lbl train saved\n');
 
  save('Dataset_time/X_val.mat', 'X_val', '-v7.3', '-nocompression')
 fprintf('X_val train saved\n');
%  save('Dataset_time/Corr_val.mat', 'Corr_val', '-v7.3', '-nocompression')
% fprintf('Corr_val train saved\n');
 save('Dataset_time/Y_val.mat', 'Y_val')
 fprintf('Y_val train saved\n');
 save('Dataset_time/lbl_val.mat', 'lbl_val')
 fprintf('lbl_val saved\n');

 save('Dataset_time/X_test.mat', 'X_test', '-v7.3', '-nocompression')
  fprintf('X_test train saved\n');
%save('Dataset_time/Corr_test.mat', 'Corr_test', '-v7.3', '-nocompression')
% fprintf('Corr_test train saved\n');
 save('Dataset_time/Y_test.mat', 'Y_test')
 fprintf('Y test saved\n');
 save('Dataset_time/lbl_test.mat', 'lbl_test')
 fprintf('lbl_test saved\n');

