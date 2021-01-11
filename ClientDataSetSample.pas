unit ClientDataSetSample;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TClientDataSetSample = class(TClientDataSet)
  private
    FRefreshSQL: TStrings;
    FModifySQL: TStrings;
    FDeleteSQL: TStrings;
    FSelectSQL: TStrings;
    FInsertSQL: TStrings;
    FTableName: String;
    procedure SetDeleteSQL(const Value: TStrings);
    procedure SetInsertSQL(const Value: TStrings);
    procedure SetModifySQL(const Value: TStrings);
    procedure SetRefreshSQL(const Value: TStrings);
    procedure SetSelectSQL(const Value: TStrings);
    procedure SetTableName(const Value: String);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property DeleteSQL: TStrings read FDeleteSQL write SetDeleteSQL;
    property InsertSQL: TStrings read FInsertSQL write SetInsertSQL;
    property RefreshSQL: TStrings read FRefreshSQL write SetRefreshSQL;
    property SelectSQL: TStrings read FSelectSQL write SetSelectSQL;
    property ModifySQL: TStrings read FModifySQL write SetModifySQL;
    property TableName : String read FTableName write SetTableName;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('DataSetSample', [TClientDataSetSample]);
end;

{ TClientDataSetSample }

{ TClientDataSetSample }

constructor TClientDataSetSample.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FRefreshSQL := TStringList.Create;
  FModifySQL := TStringList.Create;
  FDeleteSQL := TStringList.Create;
  FSelectSQL := TStringList.Create;
  FInsertSQL := TStringList.Create;
end;

destructor TClientDataSetSample.Destroy;
begin
  FRefreshSQL.Free;
  FModifySQL.Free;
  FDeleteSQL.Free;
  FSelectSQL.Free;
  FInsertSQL.Free;
  inherited Destroy;
end;

procedure TClientDataSetSample.SetDeleteSQL(const Value: TStrings);
begin
  FDeleteSQL.Assign(Value);
end;

procedure TClientDataSetSample.SetInsertSQL(const Value: TStrings);
begin
  FInsertSQL.Assign(Value);
end;

procedure TClientDataSetSample.SetModifySQL(const Value: TStrings);
begin
  FModifySQL.Assign(Value);
end;

procedure TClientDataSetSample.SetRefreshSQL(const Value: TStrings);
begin
  FRefreshSQL.Assign(Value);
end;

procedure TClientDataSetSample.SetSelectSQL(const Value: TStrings);
begin
  FSelectSQL.Assign(Value);
end;

procedure TClientDataSetSample.SetTableName(const Value: String);
begin
  FTableName := Value;
end;

end.
