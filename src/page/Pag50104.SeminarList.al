page 50104 "SeminarList"
{
    Caption = 'Seminar List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Seminar;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(SeminarID; Rec.SeminarID)
                {
                    ApplicationArea = All;
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                    ApplicationArea = All;
                }

                field(LecturerID; Rec.LecturerID)
                {
                    ApplicationArea = All;
                }
                field(IsSubjectToExamination; Rec.IsSubjectToExamination)
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(ShowSeminarDetails)
            {
                Caption = 'Show Seminar Details';
                ApplicationArea = All;
                RunObject = page 50102;
                RunPageLink = "SeminarID" = field(SeminarID);
            }

            action(AddSeminar)
            {
                Caption = 'Add new Seminar';
                ApplicationArea = All;
                RunObject = page 50102;
                RunPageLink = "SeminarID" = field(SeminarID);
            }

            action(ShowGrades)
            {
                Caption = 'Show Grades';
                ApplicationArea = All;
                RunObject = page 50106;
                RunPageLink = "SeminarID" = field(SeminarID);
            }
        }
    }
}