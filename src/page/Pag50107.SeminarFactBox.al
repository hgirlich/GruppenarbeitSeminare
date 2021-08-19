page 50107 "SeminarFactBox"
{
    Caption = 'Seminar FactBox';
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Seminar";

    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Seminar Name"; Rec."Seminar Name")
                {

                }
                field("SeminarID"; Rec.SeminarID)
                {

                }
                field(LecturerID; Rec.LecturerID)
                {

                }
                field(LecturerName; Rec.LecturerName)
                {

                }
                field(Description; Rec.Description)
                {

                }
                field(Date; Rec.Date)
                {

                }
                field(IsSubjectToExamination; Rec.IsSubjectToExamination)
                {

                }

            }
        }
    }
}