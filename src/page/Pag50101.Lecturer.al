page 50101 "LecturerList"
{
    Caption = 'Lecturer';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Lecturer;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(LecturerID; Rec.LecturerID)
                {
                    Caption = 'Lecturer ID';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}