page 50101 "LecturerList"
{
    Caption = 'Lecturer List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Lecturer;

    layout
    {
        area(Content)
        {
            repeater(General)
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

                field(Specialization; Rec.Specialization)
                {
                    Caption = 'Specialization';
                    ApplicationArea = All;
                }

            }
        }
    }
}