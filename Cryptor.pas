unit Cryptor;

interface
  function ChesarCrypt(input: string; offset: longint): string;
  function ChesarDecrypt(input: string; offset: longint): string;
implementation
  ///<summary>
  ///������� ������ ������� ������
  ///</summary>
  ///<param name="input">
  ///������� ������
  ///</param>
  ///<param name="offset">
  ///����� ��� ����������
  ///</param>
  ///<returns>
  ///������������� ������
  ///</returs>
  function ChesarCrypt(input: string; offset: longint): string;
  const
   NUM_Of_SYMBOLS = 65535;
  var
    output: string;
    counter, StrLen: integer;
  begin
    if offset >  NUM_OF_SYMBOLS then
      offset := offset mod 65535;

    StrLen := Length(input);

    for counter := 1 to StrLen do begin
      output := output + chr((ord(input[counter]) + offset) mod NUM_OF_SYMBOLS);
    end;

    ChesarCrypt := output
  end;
  ///<summary>
  ///�������������� ������ ������� ������
  ///</summary>
  ///<param name="input">
  ///������� ������
  ///</param>
  ///<param name="offset">
  ///����� ��� ����������
  ///</param>
  ///<returns>
  ///�������������� ������
  ///</returs>
  function ChesarDecrypt(input: string; offset: longint): string;
  const
   NUM_Of_SYMBOLS = 65535;
  var
    output: string;
    counter, StrLen: integer;
  begin
    if offset >  NUM_OF_SYMBOLS then
      offset := offset mod 65535;

    StrLen := Length(input);

    for counter := 1 to StrLen do begin
      output := output + chr((ord(input[counter]) + NUM_OF_SYMBOLS - offset) mod NUM_OF_SYMBOLS);
    end;

    ChesarDecrypt := output
  end;
end.
