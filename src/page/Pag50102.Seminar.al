page 50102 "SeminarList"
{
    Caption = 'Seminar';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Seminar;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Seminar Name"; Rec."Seminar Name")
                {
                    Caption = 'Seminar Name';
                    ApplicationArea = All;
                    TableRelation = Seminar."Seminar Name";
                }
                field("SeminarID"; Rec.SeminarID)
                {
                    Caption = 'Seminar ID';
                    ApplicationArea = All;
                    TableRelation = Seminar.SeminarID;
                }
                field(LecturerID; Rec.LecturerID)
                {
                    Caption = 'Lecturer ID';
                    ApplicationArea = All;
                    TableRelation = Lecturer.LecturerID;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    Caption = 'Date';
                    ApplicationArea = All;
                }
            }
            part(Lines; "Participants Subpage")
            {
                Caption = 'Participants';
                SubPageLink = "SeminarID" = field("SeminarID");
            }
        }
    }
}