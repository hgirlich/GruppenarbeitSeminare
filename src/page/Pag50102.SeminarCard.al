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
                group(SeminarInfo)
                {
                    Caption = 'Seminar Information';
                    field("SeminarID"; Rec.SeminarID)
                    {
                        //Editable = false;
                    }
                    field("Seminar Name"; Rec."Seminar Name")
                    {

                    }
                    field(LecturerID; Rec.LecturerID)
                    {
                        TableRelation = Lecturer.LecturerID;
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
            part(Lines; "Participant List Subpage")
            {
                Caption = 'Participants Information';
                SubPageLink = "SeminarID" = field("SeminarID");
            }
        }
    }
}