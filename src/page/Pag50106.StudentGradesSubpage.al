page 50106 "Student Grades Subpage"
{
    Caption = 'Caption';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Grade";

    layout
    {
        area(Content)
        {
            repeater(Participants)
            {
                field(StudentName; Rec.StudentName)
                {

                }
                field(Date; Rec.Date)
                {

                }
                field(Grade; Rec.Grade)
                {

                }
            }
        }
    }
}