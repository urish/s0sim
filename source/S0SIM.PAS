program s0sim; {ine yesh program, lamora ha-azbanit}

{input: kama hazir letet las0sim, vekama kashe ha maslul.
 output: meroz s0sim beshidur hai
 try to give 10 hazir vemaslul kashe 50
}

uses crt;

const KamaS0sim = 20; {we need it constant to define the array.}

var S0S: array [1..KamaS0sim] of integer; winner, kashe, hazir, i: integer;
begin
  randomize;
  writeln('Ine meroz im ', kamaS0sim, ' s0sim');            {tell the user}
  writeln('Kama hazir Las0sim ?');                          {ask the user 2 enter hazir}
  readln(hazir);                                            {read hazir from user}
  writeln('Kama Kashe Las0sim ?');                          {ask the user 2 enter koshi}
  readln(kashe);                                            {read kashe from user}
  if (hazir > kashe) or (kashe < 2) then                    {check whether it's too ez or not}
  begin
    writeln('Kal Midai! Kol has0sim win yasher !');         {bah it's too ez display error msg}
    exit;                                                   {and quit}
  end;
  if (hazir < 2) then
  begin
    writeln('S0sim lo ovdim bli hazir. haiav liot at least 2 hazir.'); {now it's too hard}
    exit;                                                              {quit}
  end;
  if (kamas0sim > 24) then
  begin
    writeln('Ei efshar display yoter me 24 s0sim. sorry.'); {we can display at most 24 s0sim}
    exit;                                                   {quit}
  end;
  writeln('Press <ENTER> to start.');                       {instruct user}
  readln;                                                   {wait 4 user}
  clrscr;                                                   {clear the screen}
  for i := 1 to kamas0sim do                                {loop s0sim azbani}
  begin
    s0s[i] := 1;                                            {initialize the s0s}
    textcolor(15);                                          {color white}
    gotoxy(78, i);                                          {print end-of-line for s0s}
    write('|');                                             {print it}
  end;
  winner := 0;                                              {ein zocha beintaim}
  while winner = 0 do                                       {wait 4 some1 2 win}
  begin
    for i := 1 to kamas0sim do                              {taavor al has0sim}
      if random(kashe div hazir) = 0 then                   {random azbani}
      begin
        gotoxy(s0s[i], i);                                  {delete old s0s}
        write(' ');                                         
        inc(s0s[i]);                                        {move s0s}
        gotoxy(s0s[i], i);                                  {redraw new s0s}
        textcolor(i mod 6 + 9);                             {set s0s color}
        write('s0s');                                       {print s0s}
        if s0s[i] = 76 then winner := i;                    {check if s0s won}
      end;
    delay(kashe);                                           {now delay azbani}
  end;
  gotoxy(1, kamas0sim+1);                                   {sof meroz}
  textcolor(7);                                             {restore text color}
  writeln('End of race. S0s ', winner, ' won.');            {print s0s winner}
  writeln('Press <ENTER> to quit.');                        {instruct the user}
  readln;                                                   {wait 4 user}
end.                                                        {sof shel s0sim}
