program FannyEnergy;
uses crt;
var
  N: integer;        
  X: real;           
  M: integer;        
  Buff: string;  
  totalEnergi: real; 

begin clrscr;
  write('banyak kabel :');
  readln(N);
  write('energi untuk 1 kabel :');        
  readln(X);
  write('jumblah musuh yang terkena serangan :');        
  readln(M);
  write('apakah fanny mendapat buff :');
  readln(Buff);   
  
  totalEnergi := N * X * M;  

  
  if Buff = 'true' then
  begin
    totalEnergi := totalEnergi * 0.9;
    totalEnergi := totalEnergi + M * 8;
  end;


  writeln(totalEnergi:0:2);
end.
