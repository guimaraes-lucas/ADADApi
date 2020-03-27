unit Events.Model;

interface

uses
  System.Generics.Collections;

type
  TEvent = class
  private
    Fdate: TDate;
    Fdescription: string;
  public
    property description: string read Fdescription write Fdescription;
    property date: TDate read Fdate write Fdate;
  end;

  TEvents = TObjectList<TEvent>;

implementation

end.
