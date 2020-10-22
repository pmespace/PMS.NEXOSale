unit MC_Stream;

interface

uses   classes
     , activeX
     , MC_PluginInterface
     ;

type

  TMC_StreamAdapter = class(TInterfacedObject, IMC_Stream)
  private
    FStream: TStream;
    FOwnership: TStreamOwnership;
  public
    constructor Create(Stream: TStream; Ownership: TStreamOwnership = soReference);
    destructor Destroy; override;
    function Read(pv: Pointer; cb: FixedUInt; pcbRead: PFixedUInt): HResult; virtual; stdcall;
    function Write(pv: Pointer; cb: FixedUInt; pcbWritten: PFixedUInt): HResult; virtual; stdcall;
    function Seek(dlibMove: Largeint; dwOrigin: Longint;out libNewPosition: Largeint): HResult; virtual; stdcall;
    function SetSize(libNewSize: Largeint): HResult; virtual; stdcall;
    function CopyTo(stm: IMC_Stream; cb: Largeint; out cbRead: Largeint;out cbWritten: Largeint): HResult; virtual; stdcall;
    function Stat(out statstg: TStatStg;grfStatFlag: Longint): HResult; virtual; stdcall;
    property Stream: TStream read FStream;
    property StreamOwnership: TStreamOwnership read FOwnership write FOwnership;
  end;

procedure CopyIMC_Stream( acSource : IMC_Stream ; acDest : IMC_Stream ) ; overload ;
function CopyIMC_Stream( acSource : IMC_Stream ) : IMC_Stream ; overload ;
procedure CopyIMC_Stream( acSource : TStream ;acDest : IMC_Stream ) ; overload ;
procedure CopyIMC_Stream( acSource : IMC_Stream ; acDest : TStream ) ; overload ;
function wideStringtoIMC_Stream( const asText : wideString ) : IMC_Stream  ;
function wideStringfromIMC_Stream( acStream : IMC_Stream) : wideString ;

function StringtoIMC_Stream( const asText : String ) : IMC_Stream  ;
function StringfromIMC_Stream(acStream : IMC_Stream) : String ;

implementation

uses   sysutils
     , windows
     , ED_Lib
     ;

constructor TMC_StreamAdapter.Create(Stream: TStream;
  Ownership: TStreamOwnership);
begin
  inherited Create;
  FStream := Stream;
  FOwnership := Ownership;
end;

destructor TMC_StreamAdapter.Destroy;
begin
  if FOwnership = soOwned then
  begin
    FStream.Free;
    FStream := nil;
  end;
  inherited Destroy;
end;

function TMC_StreamAdapter.Read(pv: Pointer; cb: Longint; pcbRead: PFixedUInt): HResult;
var
  NumRead: Longint;
begin
  try
    if pv = Nil then
    begin
      Result := STG_E_INVALIDPOINTER;
      Exit;
    end;
    NumRead := FStream.Read(pv^, cb);
    if pcbRead <> Nil then pcbRead^ := NumRead;
    Result := S_OK;
  except
    Result := S_FALSE;
  end;
end;

function TMC_StreamAdapter.Write(pv: Pointer; cb: Longint; pcbWritten: PFixedUInt): HResult;
var
  NumWritten: Longint;
begin
  try
    if pv = Nil then
    begin
      Result := STG_E_INVALIDPOINTER;
      Exit;
    end;
    NumWritten := FStream.Write(pv^, cb);
    if pcbWritten <> Nil then pcbWritten^ := NumWritten;
    Result := S_OK;
  except
    Result := STG_E_CANTSAVE;
  end;
end;

function TMC_StreamAdapter.Seek(dlibMove: Largeint; dwOrigin: Longint; out libNewPosition: Largeint): HResult;
var
  NewPos: LargeInt;
begin
  try
    if (dwOrigin < STREAM_SEEK_SET) or (dwOrigin > STREAM_SEEK_END) then
    begin
      Result := STG_E_INVALIDFUNCTION;
      Exit;
    end;
    NewPos := FStream.Seek(dlibMove, dwOrigin);
    if @libNewPosition <> nil then libNewPosition := NewPos;
    Result := S_OK;
  except
    Result := STG_E_INVALIDPOINTER;
  end;
end;

function TMC_StreamAdapter.SetSize(libNewSize: Largeint): HResult;
begin
  try
    FStream.Size := libNewSize;
    if libNewSize <> FStream.Size then
      Result := E_FAIL
    else
      Result := S_OK;
  except
    Result := E_UNEXPECTED;
  end;
end;

function TMC_StreamAdapter.CopyTo(stm: IMC_Stream; cb: Largeint; out cbRead: Largeint; out cbWritten: Largeint): HResult;
const
  MaxBufSize = 1024 * 1024;  // 1mb
var
  Buffer: Pointer;
  BufSize, N, I, R: Integer;
  BytesRead, BytesWritten, W: LargeInt;
begin
  Result := S_OK;
  BytesRead := 0;
  BytesWritten := 0;
  try
    if cb > MaxBufSize then
      BufSize := MaxBufSize
    else
      BufSize := Integer(cb);
    GetMem(Buffer, BufSize);
    try
      while cb > 0 do
      begin
        if cb > MaxInt then
          I := MaxInt
        else
          I := cb;
        while I > 0 do
        begin
          if I > BufSize then N := BufSize else N := I;
          R := FStream.Read(Buffer^, N);
          if R = 0 then Exit; // The end of the stream was hit.
          Inc(BytesRead, R);
          W := 0;
          Result := stm.Write(Buffer, R, @W);
          Inc(BytesWritten, W);
          if (Result = S_OK) and (Integer(W) <> R) then Result := E_FAIL;
          if Result <> S_OK then Exit;
          Dec(I, R);
          Dec(cb, R);
        end;
      end;
    finally
      FreeMem(Buffer);
      if (@cbWritten <> nil) then cbWritten := BytesWritten;
      if (@cbRead <> nil) then cbRead := BytesRead;
    end;
  except
    Result := E_UNEXPECTED;
  end;
end;

function TMC_StreamAdapter.Stat(out statstg: TStatStg; grfStatFlag: Longint): HResult;
begin
  Result := S_OK;
  try
    if (@statstg <> nil) then
      with statstg do
      begin
        dwType := STGTY_STREAM;
        cbSize := FStream.Size;
        mTime.dwLowDateTime := 0;
        mTime.dwHighDateTime := 0;
        cTime.dwLowDateTime := 0;
        cTime.dwHighDateTime := 0;
        aTime.dwLowDateTime := 0;
        aTime.dwHighDateTime := 0;
        grfLocksSupported := LOCK_WRITE;
      end;
  except
    Result := E_UNEXPECTED;
  end;
end;

procedure CopyIMC_Stream( acSource : IMC_Stream ; acDest : IMC_Stream ) ;
var
  l6Read,l6Written : int64 ;
  lrStat : TStatStg ;
begin
   acDest.Seek(0,0,l6Written) ;
   acSource.Seek(0,0,l6Written) ;
   acSource.Stat(lrStat,0) ;
   acDest.SetSize(lrStat.cbSize) ;
   acSource.CopyTo(acDest,lrStat.cbSize,l6Read,l6Written) ;
   acSource.Seek(0,0,l6Written) ;
   acDest.Seek(0,0,l6Written) ;
end ;

function CopyIMC_Stream( acSource : IMC_Stream ) : IMC_Stream ;
begin
   Result:=TMC_StreamAdapter.Create(TMemoryStream.create,soOwned) ;
   copyIMC_Stream(acSource,result) ;
end ;

procedure CopyIMC_Stream( acSource : TStream ;acDest : IMC_Stream ) ;
var
  lcAdapter : IMC_Stream ;
begin
   lcAdapter:=TMC_StreamAdapter.create(acSource) ;
   CopyIMC_Stream(lcAdapter,acDest);
end ;

procedure CopyIMC_Stream( acSource : IMC_Stream ; acDest : TStream ) ; overload ;
var
  lcAdapter : IMC_Stream ;
begin
   lcAdapter:=TMC_StreamAdapter.create(acDest) ;
   CopyIMC_Stream(acSource,lcAdapter);
end ;

function wideStringtoIMC_Stream( const asText : wideString ) : IMC_Stream  ;
begin
   result:=TMC_StreamAdapter.Create(wideStringToStream(asText),soOwned) ;
end ;

function wideStringfromIMC_Stream( acStream : IMC_Stream) : wideString ;
var
   lrStat : TStatStg ;
   l6Bidon : largeInt ;
begin
   result:='' ;
   if S_OK=acStream.Stat(lrStat,0) then
   begin
      setlength(Result,lrStat.cbSize div 2) ;
      acStream.seek(0,0,l6bidon) ;
      acStream.read(PWideChar(result),lrStat.cbSize,@l6Bidon);
      acStream.seek(0,0,l6bidon) ;
   end ;
end ;

function StringtoIMC_Stream( const asText : String ) : IMC_Stream  ;
begin
////   result:=TMC_StreamAdapter.Create(StringToStream(asText),soOwned) ;
end ;

function StringfromIMC_Stream(acStream : IMC_Stream) : String ;
var
   lrStat : TStatStg ;
   l6Bidon : largeInt ;
begin
   result:='' ;
   if S_OK=acStream.Stat(lrStat,0) then
   begin
      setlength(Result,lrStat.cbSize) ;
      acStream.seek(0,0,l6bidon) ;
      acStream.read(PChar(result),lrStat.cbSize,@l6Bidon);
      acStream.seek(0,0,l6bidon) ;
   end ;
end ;

end.
