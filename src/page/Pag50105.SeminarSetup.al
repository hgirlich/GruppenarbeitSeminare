page 50105 "Seminar Setup"
{
    PageType = Card;
    SourceTable = "Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Seminar No. Series Code"; Rec."Seminar No. Series Code")
                {

                }
                field("Student No. Series Code"; Rec."Student No. Series Code")
                {

                }
                field("Lecturer No. Series Code"; Rec."Lecturer No. Series Code")
                {

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.get then Rec.Insert;
    end;

}
