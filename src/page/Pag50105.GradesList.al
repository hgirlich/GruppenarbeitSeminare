page 50105 "GradesList"
{
    Caption = 'Grades List';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Grade;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(StudentID; Rec.StudentID)
                {
                    ApplicationArea = All;
                }
                field(SeminarID; Rec.SeminarID)
                {

                }
                field(Date; Rec.Date)
                {

                }
                field(Grade; Rec.Grade)
                {

                }
            }


            part(Grades; "Student Grades Subpage")
            {
                Caption = 'Student Grades Subpage';
                SubPageLink = "StudentID" = field("StudentID");
            }
        }
    }
}