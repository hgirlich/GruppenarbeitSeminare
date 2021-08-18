page 50108 "GradesList"
{
    Caption = 'Grades List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = SeminarParticipantLine;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(SeminarID; Rec.SeminarID)
                {
                    Editable = false;
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                    Editable = false;
                }
                field(StudentID; Rec.StudentID)
                {
                    Editable = false;
                }
                field(StudentName; Rec.StudentName)
                {
                    Editable = false;
                }
                field(Date; Rec.Date)
                {
                    Editable = false;
                }
                field(Grade; Rec.Grade)
                {
                    Editable = false;
                }
            }
        }
    }
}