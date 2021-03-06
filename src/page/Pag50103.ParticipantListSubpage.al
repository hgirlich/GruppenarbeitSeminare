page 50103 "Participant List Subpage"
{
    PageType = ListPart;
    UsageCategory = Lists;
    SourceTable = "SeminarParticipantLine";
    ApplicationArea = All;
    layout
    {
        area(Content)
        {
            repeater(Participants)
            {
                field(SeminarID; Rec.SeminarID)
                {
                    Visible = false;
                }
                field(StudentID; Rec.StudentID)
                {

                }
                field(StudentName; Rec.StudentName)
                {
                    Editable = false;
                }
                field(Date; Rec.Date)
                {

                }
                field(Grade; Rec.Grade)
                {

                }
            }
        }

        //ACTION ON VALI IF SEMINAR_ID IS valid
    }
}