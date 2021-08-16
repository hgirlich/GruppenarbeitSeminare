page 50102 "SeminarCard"
{
    Caption = 'Seminar Card';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
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
                }
                field("SeminarID"; Rec.SeminarID)
                {
                    Caption = 'Seminar ID';
                }
                field(LecturerID; Rec.LecturerID)
                {
                    Caption = 'Lecturer ID';
                }
                field(LecturerName; Rec.LecturerName)
                {
                    Caption = 'Lecturer Name';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(Date; Rec.Date)
                {
                    Caption = 'Date';
                }
                field(IsSubjectToExamination; Rec.IsSubjectToExamination)
                {
                    Caption = 'Is Subject To Examination';
                }
            }
            part(Lines; "Participant List Subpage")
            {
                Caption = 'Participants';
                SubPageLink = "SeminarID" = field("SeminarID");
            }
        }
    }

    /*     trigger OnOpenPage()
        begin
            if not Rec.get then
                Rec.Insert;
        end; */
}